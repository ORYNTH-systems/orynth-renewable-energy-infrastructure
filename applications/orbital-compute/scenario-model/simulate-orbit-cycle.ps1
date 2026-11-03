param(
    [string]$ScenarioId = "ORC-001-BASELINE",
    [double]$StepMinutes = 1.0
)

$ErrorActionPreference = "Stop"
$casesPath = Join-Path $PSScriptRoot "orbit-cycle-cases.csv"
$summaryPath = Join-Path $PSScriptRoot "orbit-cycle-summary.csv"
$seriesPath = Join-Path $PSScriptRoot "orbit-cycle-timeseries.csv"

if ($StepMinutes -le 0) {
    throw "StepMinutes must be greater than zero."
}

function Parse-Number {
    param([string]$Text)

    $value = 0.0
    $ok = [double]::TryParse(
        $Text,
        [Globalization.NumberStyles]::Float,
        [Globalization.CultureInfo]::InvariantCulture,
        [ref]$value
    )

    if ($ok) { return $value }
    return $null
}

$requiredOperationalInputs = @(
    "array_available_bus_power_eol_kw",
    "battery_charge_power_limit_kw",
    "battery_discharge_power_limit_kw",
    "radiator_available_rejection_kwthermal",
    "initial_soc_fraction",
    "required_reserve_kwh"
)

$allSummaries = [System.Collections.Generic.List[object]]::new()
$allSeries = [System.Collections.Generic.List[object]]::new()

$cases = Import-Csv $casesPath | Where-Object { $_.scenario_id -eq $ScenarioId }
if (@($cases).Count -eq 0) {
    throw "No orbit-cycle cases found for scenario '$ScenarioId'."
}

foreach ($case in $cases) {
    $missing = @(
        $requiredOperationalInputs | Where-Object {
            $null -eq (Parse-Number ([string]$case.$_))
        }
    )

    $requiredBaseInputs = @(
        "compute_load_kw",
        "auxiliary_load_kw",
        "orbit_period_min",
        "sunlit_min",
        "eclipse_min",
        "bus_distribution_efficiency",
        "battery_charge_efficiency",
        "battery_discharge_efficiency",
        "battery_depth_of_discharge",
        "battery_nominal_energy_kwh",
        "compute_load_to_heat_fraction"
    )

    $missingBase = @(
        $requiredBaseInputs | Where-Object {
            $null -eq (Parse-Number ([string]$case.$_))
        }
    )

    if ($missingBase.Count -gt 0) {
        $allSummaries.Add([pscustomobject]@{
            scenario_id = $ScenarioId
            case_id = $case.case_id
            status = "INVALID_INPUTS"
            missing_inputs = ($missingBase -join ";")
            minimum_soc_fraction = ""
            minimum_reserve_margin_kwh = ""
            maximum_heat_load_kwthermal = ""
            minimum_thermal_margin_kwthermal = ""
            throttled_minutes = ""
            blocked_minutes = ""
            required_array_terminal_power_kw = ""
            note = "Required screening inputs are absent or nonnumeric."
        })
        continue
    }

    if ($missing.Count -gt 0) {
        $allSummaries.Add([pscustomobject]@{
            scenario_id = $ScenarioId
            case_id = $case.case_id
            status = "OPEN"
            missing_inputs = ($missing -join ";")
            minimum_soc_fraction = ""
            minimum_reserve_margin_kwh = ""
            maximum_heat_load_kwthermal = ""
            minimum_thermal_margin_kwthermal = ""
            throttled_minutes = ""
            blocked_minutes = ""
            required_array_terminal_power_kw = ""
            note = "Operational trajectory not calculated; actual array, battery, reserve, and radiator inputs are required."
        })
        continue
    }

    $computeLoad = Parse-Number $case.compute_load_kw
    $auxLoad = Parse-Number $case.auxiliary_load_kw
    $periodMin = Parse-Number $case.orbit_period_min
    $sunlitMin = Parse-Number $case.sunlit_min
    $eclipseMin = Parse-Number $case.eclipse_min
    $busEfficiency = Parse-Number $case.bus_distribution_efficiency
    $chargeEfficiency = Parse-Number $case.battery_charge_efficiency
    $dischargeEfficiency = Parse-Number $case.battery_discharge_efficiency
    $depthOfDischarge = Parse-Number $case.battery_depth_of_discharge
    $batteryCapacity = Parse-Number $case.battery_nominal_energy_kwh
    $heatFraction = Parse-Number $case.compute_load_to_heat_fraction
    $arrayBusPower = Parse-Number $case.array_available_bus_power_eol_kw
    $chargePowerLimit = Parse-Number $case.battery_charge_power_limit_kw
    $dischargePowerLimit = Parse-Number $case.battery_discharge_power_limit_kw
    $radiatorCapacity = Parse-Number $case.radiator_available_rejection_kwthermal
    $initialSoc = Parse-Number $case.initial_soc_fraction
    $reserveEnergy = Parse-Number $case.required_reserve_kwh

    if (
        $periodMin -le 0 -or $sunlitMin -le 0 -or $eclipseMin -lt 0 -or
        [math]::Abs(($sunlitMin + $eclipseMin) - $periodMin) -gt 0.02 -or
        $busEfficiency -le 0 -or $busEfficiency -gt 1 -or
        $chargeEfficiency -le 0 -or $chargeEfficiency -gt 1 -or
        $dischargeEfficiency -le 0 -or $dischargeEfficiency -gt 1 -or
        $depthOfDischarge -le 0 -or $depthOfDischarge -gt 1 -or
        $batteryCapacity -le 0 -or $heatFraction -lt 0 -or
        $arrayBusPower -lt 0 -or $chargePowerLimit -lt 0 -or
        $dischargePowerLimit -lt 0 -or $radiatorCapacity -lt 0 -or
        $initialSoc -lt 0 -or $initialSoc -gt 1 -or
        $reserveEnergy -lt 0 -or $reserveEnergy -ge $batteryCapacity
    ) {
        $allSummaries.Add([pscustomobject]@{
            scenario_id = $ScenarioId
            case_id = $case.case_id
            status = "INVALID_INPUTS"
            missing_inputs = ""
            minimum_soc_fraction = ""
            minimum_reserve_margin_kwh = ""
            maximum_heat_load_kwthermal = ""
            minimum_thermal_margin_kwthermal = ""
            throttled_minutes = ""
            blocked_minutes = ""
            required_array_terminal_power_kw = ""
            note = "One or more values failed range or orbit-duration checks."
        })
        continue
    }

    $reserveFloor = [math]::Max(
        $batteryCapacity * (1 - $depthOfDischarge),
        $reserveEnergy
    )
    $storedEnergy = $batteryCapacity * $initialSoc
    $minimumStored = $storedEnergy
    $minimumSoc = $initialSoc
    $minimumReserveMargin = $storedEnergy - $reserveFloor
    $maximumHeat = 0.0
    $minimumThermalMargin = [double]::PositiveInfinity
    $throttledMinutes = 0.0
    $blockedMinutes = 0.0

    for ($elapsed = 0.0; $elapsed -lt $periodMin; $elapsed += $StepMinutes) {
        $dtMin = [math]::Min($StepMinutes, $periodMin - $elapsed)
        $dtHours = $dtMin / 60.0
        $phase = if ($elapsed -lt $sunlitMin) { "SUNLIT" } else { "ECLIPSE" }
        $arrayToBus = if ($phase -eq "SUNLIT") { $arrayBusPower } else { 0.0 }

        $energyAvailableAboveFloor = [math]::Max(0.0, $storedEnergy - $reserveFloor) * $dischargeEfficiency
        $energyLimitedBatteryPower = if ($dtHours -gt 0) { $energyAvailableAboveFloor / $dtHours } else { 0.0 }
        $batteryPowerAvailable = [math]::Min($dischargePowerLimit, $energyLimitedBatteryPower)

        $powerLimitedCompute = [math]::Max(0.0, $arrayToBus + $batteryPowerAvailable - $auxLoad)
        $thermalLimitedCompute = [math]::Max(0.0, ($radiatorCapacity - $auxLoad) / [math]::Max($heatFraction, 0.000001))
        $allowedCompute = [math]::Min($computeLoad, [math]::Min($powerLimitedCompute, $thermalLimitedCompute))

        if ($storedEnergy -lt ($reserveFloor - 0.000001)) {
            $allowedCompute = 0.0
        }

        $dispatch = if ($allowedCompute -le 0) {
            "BLOCKED"
        } elseif ($allowedCompute -lt ($computeLoad - 0.000001)) {
            "THROTTLED"
        } else {
            "AVAILABLE"
        }

        $busDemand = $allowedCompute + $auxLoad
        $netBusPower = $arrayToBus - $busDemand
        $batteryFlowBusKw = 0.0

        if ($netBusPower -gt 0) {
            $roomKwh = [math]::Max(0.0, $batteryCapacity - $storedEnergy)
            $roomLimitedChargeKw = if ($dtHours -gt 0) {
                $roomKwh / ($chargeEfficiency * $dtHours)
            } else {
                0.0
            }
            $chargeKw = [math]::Min($netBusPower, [math]::Min($chargePowerLimit, $roomLimitedChargeKw))
            $storedEnergy += $chargeKw * $dtHours * $chargeEfficiency
            $batteryFlowBusKw = -$chargeKw
        } elseif ($netBusPower -lt 0) {
            $dischargeKw = [math]::Min(-$netBusPower, $batteryPowerAvailable)
            $storedEnergy -= ($dischargeKw * $dtHours) / $dischargeEfficiency
            $batteryFlowBusKw = $dischargeKw
        }

        $storedEnergy = [math]::Max(0.0, [math]::Min($batteryCapacity, $storedEnergy))
        $soc = $storedEnergy / $batteryCapacity
        $heatLoad = ($allowedCompute * $heatFraction) + $auxLoad
        $thermalMargin = $radiatorCapacity - $heatLoad
        $reserveMargin = $storedEnergy - $reserveFloor

        $minimumStored = [math]::Min($minimumStored, $storedEnergy)
        $minimumSoc = [math]::Min($minimumSoc, $soc)
        $minimumReserveMargin = [math]::Min($minimumReserveMargin, $reserveMargin)
        $maximumHeat = [math]::Max($maximumHeat, $heatLoad)
        $minimumThermalMargin = [math]::Min($minimumThermalMargin, $thermalMargin)

        if ($dispatch -eq "THROTTLED") { $throttledMinutes += $dtMin }
        if ($dispatch -eq "BLOCKED") { $blockedMinutes += $dtMin }

        $allSeries.Add([pscustomobject]@{
            scenario_id = $ScenarioId
            case_id = $case.case_id
            elapsed_min = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $elapsed)
            orbit_phase = $phase
            array_bus_power_kw = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $arrayToBus)
            requested_compute_kw = $computeLoad
            allowed_compute_kw = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $allowedCompute)
            auxiliary_load_kw = $auxLoad
            battery_flow_to_bus_kw = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $batteryFlowBusKw)
            battery_energy_kwh = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $storedEnergy)
            battery_soc_fraction = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.####}", $soc)
            reserve_margin_kwh = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $reserveMargin)
            heat_load_kwthermal = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $heatLoad)
            radiator_capacity_kwthermal = $radiatorCapacity
            thermal_margin_kwthermal = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $thermalMargin)
            dispatch_state = $dispatch
            note = "One-minute screening step; auxiliary electrical load is treated as heat; thermal transients and environmental heat are omitted."
        })
    }

    $requiredArrayTerminal = ($computeLoad + $auxLoad) / $busEfficiency * (
        1 + ($eclipseMin / $sunlitMin) / ($chargeEfficiency * $dischargeEfficiency)
    )

    $allSummaries.Add([pscustomobject]@{
        scenario_id = $ScenarioId
        case_id = $case.case_id
        status = "SIMULATED_SCREENING_ONLY"
        missing_inputs = ""
        minimum_soc_fraction = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.####}", $minimumSoc)
        minimum_reserve_margin_kwh = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $minimumReserveMargin)
        maximum_heat_load_kwthermal = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $maximumHeat)
        minimum_thermal_margin_kwthermal = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $minimumThermalMargin)
        throttled_minutes = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $throttledMinutes)
        blocked_minutes = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $blockedMinutes)
        required_array_terminal_power_kw = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $requiredArrayTerminal)
        note = "Array input is defined at the regulated bus at end of life. Auxiliary load is conservatively treated as heat. Model omits thermal transients, environmental heat, and component-specific dynamics."
    })
}

$allSummaries | Export-Csv -Path $summaryPath -NoTypeInformation -Encoding utf8

if ($allSeries.Count -gt 0) {
    $allSeries | Export-Csv -Path $seriesPath -NoTypeInformation -Encoding utf8
} elseif (Test-Path $seriesPath) {
    Remove-Item $seriesPath
}

$allSummaries | Format-Table case_id,status,missing_inputs,minimum_soc_fraction,maximum_heat_load_kwthermal,throttled_minutes,blocked_minutes -AutoSize
Write-Host "Orbit-cycle summary written to $summaryPath"
if ($allSeries.Count -gt 0) {
    Write-Host "Orbit-cycle time series written to $seriesPath"
}

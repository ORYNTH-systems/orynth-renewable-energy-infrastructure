param(
    [string]$ScenarioId = "ORC-001-BASELINE"
)

$ErrorActionPreference = "Stop"
$culture = [Globalization.CultureInfo]::InvariantCulture
$inputPath = Join-Path $PSScriptRoot "scenario-inputs.csv"
$casesPath = Join-Path $PSScriptRoot "orbit-cycle-cases.csv"
$outputPath = Join-Path $PSScriptRoot "sensitivity-results.csv"
$factorPath = Join-Path $PSScriptRoot "sensitivity-factor-cases.csv"

function Read-Number {
    param([string]$Text)
    $number = 0.0
    if ([double]::TryParse(
        $Text,
        [Globalization.NumberStyles]::Float,
        $culture,
        [ref]$number
    )) { return $number }
    return $null
}

$sourceRows = Import-Csv $inputPath | Where-Object {
    $_.scenario_id -eq $ScenarioId
}
$inputs = @{}
foreach ($row in $sourceRows) {
    $parsed = Read-Number $row.value
    if ($null -ne $parsed -and $row.status -notin @("OPEN", "SEPARATE")) {
        $inputs[$row.parameter] = $parsed
    }
}

$cases = @(Import-Csv $casesPath)
if ($cases.Count -eq 0) {
    throw "No orbit-cycle cases found in $casesPath"
}

# These sweep ranges are analyst-selected sensitivities around the documented
# baseline. They are not specifications or predictions of flight performance.
$sweepDefinitions = @(
    @{ parameter="bus_distribution_efficiency"; values=@(0.90,0.95,0.98); domain="POWER" }
    @{ parameter="battery_charge_efficiency"; values=@(0.90,0.95,0.98); domain="POWER" }
    @{ parameter="battery_discharge_efficiency"; values=@(0.90,0.95,0.98); domain="POWER" }
    @{ parameter="battery_depth_of_discharge"; values=@(0.70,0.80,0.90); domain="POWER" }
    @{ parameter="array_eol_output_factor"; values=@(0.70,0.80,0.90); domain="POWER" }
    @{ parameter="array_design_reserve_factor"; values=@(1.10,1.20,1.30); domain="POWER" }
    @{ parameter="radiator_flux_w_m2"; values=@(1200.0,1400.0,1600.0); domain="THERMAL" }
    @{ parameter="radiator_derate_factor"; values=@(0.70,0.80,0.90); domain="THERMAL" }
    @{ parameter="radiator_reserve_factor"; values=@(1.10,1.20,1.30); domain="THERMAL" }
)

$factorRows = [System.Collections.Generic.List[object]]::new()
$resultRows = [System.Collections.Generic.List[object]]::new()

foreach ($definition in $sweepDefinitions) {
    $parameter = $definition.parameter
    $baseline = $null
    $baselineSource = "OPEN: parameter not present as a numeric input in scenario-inputs.csv"

    if ($inputs.ContainsKey($parameter)) {
        $baseline = [double]$inputs[$parameter]
        $sourceRow = $sourceRows | Where-Object parameter -eq $parameter | Select-Object -First 1
        $baselineSource = $sourceRow.source_or_rationale
    } elseif ($parameter -eq "radiator_flux_w_m2") {
        # The thermal budget documents 1,400 W/m^2 as a screening assumption.
        $baseline = 1400.0
        $baselineSource = "../orbit-budget/thermal-budget.md; documented screening value, area convention unresolved"
    } elseif ($parameter -eq "radiator_derate_factor") {
        $baseline = 0.80
        $baselineSource = "../orbit-budget/thermal-budget.md; analyst-selected stress factor"
    } elseif ($parameter -eq "radiator_reserve_factor") {
        $baseline = 1.20
        $baselineSource = "../orbit-budget/thermal-budget.md; analyst-selected stress factor"
    }

    foreach ($level in $definition.values) {
        $factorRows.Add([pscustomobject]@{
            parameter = $parameter
            domain = $definition.domain
            value = $level.ToString("G", $culture)
            unit = if ($parameter -like "*efficiency" -or $parameter -like "*factor" -or $parameter -like "*depth_of_discharge") { "fraction_or_factor" } else { "W/m^2" }
            level = if ($null -eq $baseline) { "SENSITIVITY_ONLY_BASELINE_OPEN" } elseif ($level -eq $baseline) { "DOCUMENTED_BASELINE" } else { "ANALYST_SELECTED_SENSITIVITY" }
            baseline_value = if ($null -eq $baseline) { "" } else { $baseline.ToString("G", $culture) }
            baseline_source = $baselineSource
            status = if ($null -eq $baseline) { "OPEN" } else { "SCREENING_ONLY" }
        })
    }
}

foreach ($case in $cases) {
    $load = Read-Number $case.compute_load_kw
    $sunlitMin = Read-Number $case.sunlit_min
    $eclipseMin = Read-Number $case.eclipse_min

    if ($null -eq $load -or $null -eq $sunlitMin -or $null -eq $eclipseMin) {
        throw "Case '$($case.case_id)' is missing numeric compute_load_kw, sunlit_min, or eclipse_min."
    }

    $sunlitHours = $sunlitMin / 60.0
    $eclipseHours = $eclipseMin / 60.0
    $auxLoad = if ($inputs.ContainsKey("auxiliary_spacecraft_load")) { [double]$inputs["auxiliary_spacecraft_load"] } else { 0.0 }
    $arrayDensity = if ($inputs.ContainsKey("array_output_density")) { [double]$inputs["array_output_density"] } else { $null }
    $heatFraction = if ($inputs.ContainsKey("compute_heat_fraction")) { [double]$inputs["compute_heat_fraction"] } else { 1.0 }

    foreach ($definition in $sweepDefinitions) {
        $parameter = $definition.parameter
        $baseline = $null

        if ($inputs.ContainsKey($parameter)) {
            $baseline = [double]$inputs[$parameter]
        } elseif ($parameter -eq "radiator_flux_w_m2") {
            $baseline = 1400.0
        } elseif ($parameter -eq "radiator_derate_factor") {
            $baseline = 0.80
        } elseif ($parameter -eq "radiator_reserve_factor") {
            $baseline = 1.20
        }

        foreach ($level in $definition.values) {
            if ($null -eq $baseline) {
                $resultRows.Add([pscustomobject]@{
                    case_id = $case.case_id
                    varied_parameter = $parameter
                    varied_value = $level
                    domain = $definition.domain
                    metric = "Required result"
                    value = ""
                    unit = ""
                    status = "OPEN"
                    note = "No numeric documented baseline found; sensitivity not calculated."
                })
                continue
            }

            $busEff = if ($inputs.ContainsKey("bus_distribution_efficiency")) { [double]$inputs["bus_distribution_efficiency"] } else { $null }
            $chargeEff = if ($inputs.ContainsKey("battery_charge_efficiency")) { [double]$inputs["battery_charge_efficiency"] } else { $null }
            $dischargeEff = if ($inputs.ContainsKey("battery_discharge_efficiency")) { [double]$inputs["battery_discharge_efficiency"] } else { $null }
            $dod = if ($inputs.ContainsKey("battery_depth_of_discharge")) { [double]$inputs["battery_depth_of_discharge"] } else { $null }
            $eol = if ($inputs.ContainsKey("array_eol_output_factor")) { [double]$inputs["array_eol_output_factor"] } else { $null }
            $arrayReserve = if ($inputs.ContainsKey("array_design_reserve_factor")) { [double]$inputs["array_design_reserve_factor"] } else { $null }

            if ($parameter -eq "bus_distribution_efficiency") { $busEff = [double]$level }
            if ($parameter -eq "battery_charge_efficiency") { $chargeEff = [double]$level }
            if ($parameter -eq "battery_discharge_efficiency") { $dischargeEff = [double]$level }
            if ($parameter -eq "battery_depth_of_discharge") { $dod = [double]$level }
            if ($parameter -eq "array_eol_output_factor") { $eol = [double]$level }
            if ($parameter -eq "array_design_reserve_factor") { $arrayReserve = [double]$level }

            if ($definition.domain -eq "POWER") {
                if ($null -in @($busEff,$chargeEff,$dischargeEff,$dod,$eol,$arrayReserve,$arrayDensity) -or
                    $busEff -le 0 -or $chargeEff -le 0 -or $dischargeEff -le 0 -or $dod -le 0 -or $eol -le 0 -or $arrayDensity -le 0) {
                    $resultRows.Add([pscustomobject]@{
                        case_id = $case.case_id
                        varied_parameter = $parameter
                        varied_value = $level
                        domain = "POWER"
                        metric = "Power sizing"
                        value = ""
                        unit = ""
                        status = "OPEN"
                        note = "One or more required baseline inputs are OPEN or invalid."
                    })
                    continue
                }

                $eclipseEnergy = ($load + $auxLoad) * $eclipseHours
                $batteryEnergy = $eclipseEnergy / ($dischargeEff * $dod)
                $arrayKw = (($load + $auxLoad) / $busEff) *
                    (1.0 + ($eclipseHours / $sunlitHours) / ($chargeEff * $dischargeEff))
                $arrayArea = ($arrayKw * 1000.0 * $arrayReserve) / ($arrayDensity * $eol)

                $metrics = @(
                    @{ name="Nominal battery energy"; value=$batteryEnergy; unit="kWh" }
                    @{ name="Required array output during sunlight with eclipse recharge"; value=$arrayKw; unit="kW" }
                    @{ name="Screening array area"; value=$arrayArea; unit="m^2" }
                )
                foreach ($metric in $metrics) {
                    $resultRows.Add([pscustomobject]@{
                        case_id = $case.case_id
                        varied_parameter = $parameter
                        varied_value = $level
                        domain = "POWER"
                        metric = $metric.name
                        value = ([double]$metric.value).ToString("F3", $culture)
                        unit = $metric.unit
                        status = "SCREENING_ONLY"
                        note = "One factor varied; remaining numeric inputs held at documented baseline. Auxiliary load uses its recorded value or zero lower-bound placeholder."
                    })
                }
            } else {
                $flux = if ($parameter -eq "radiator_flux_w_m2") { [double]$level } else { 1400.0 }
                $derate = if ($parameter -eq "radiator_derate_factor") { [double]$level } else { 0.80 }
                $thermalReserve = if ($parameter -eq "radiator_reserve_factor") { [double]$level } else { 1.20 }
                $area = ($load * $heatFraction * 1000.0 * $thermalReserve) / ($flux * $derate * 2.0)

                $resultRows.Add([pscustomobject]@{
                    case_id = $case.case_id
                    varied_parameter = $parameter
                    varied_value = $level
                    domain = "THERMAL"
                    metric = "Physical radiator footprint, equal two-face assumption"
                    value = $area.ToString("F3", $culture)
                    unit = "m^2"
                    status = "SCREENING_ONLY"
                    note = "Compute load treated as heat; equal two-face emission assumed. Flux convention and environmental/auxiliary heat remain unresolved."
                })
            }
        }
    }
}

$factorRows | Export-Csv -Path $factorPath -NoTypeInformation -Encoding utf8
$resultRows | Export-Csv -Path $outputPath -NoTypeInformation -Encoding utf8
$resultRows | Format-Table case_id,varied_parameter,varied_value,metric,value,unit,status -AutoSize
Write-Host "Sensitivity factors written to $factorPath"
Write-Host "Sensitivity results written to $outputPath"
Write-Host "All outputs are screening-only; analyst-selected sweep levels are not verified performance."

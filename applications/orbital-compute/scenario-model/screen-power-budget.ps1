param(
    [string]$ScenarioId = "ORC-001-BASELINE"
)

$ErrorActionPreference = "Stop"
$inputPath = Join-Path $PSScriptRoot "scenario-inputs.csv"
$outputPath = Join-Path $PSScriptRoot "power-screening-results.csv"

$values = @{}
foreach ($row in (Import-Csv $inputPath | Where-Object { $_.scenario_id -eq $ScenarioId })) {
    $number = 0.0
    if (
        $row.status -notin @("OPEN", "SEPARATE") -and
        -not [string]::IsNullOrWhiteSpace($row.value) -and
        [double]::TryParse(
            $row.value,
            [Globalization.NumberStyles]::Float,
            [Globalization.CultureInfo]::InvariantCulture,
            [ref]$number
        )
    ) {
        $values[$row.parameter] = $number
    }
}

$required = @(
    "compute_average_power",
    "compute_peak_power",
    "auxiliary_spacecraft_load",
    "eclipse_duration",
    "sunlit_duration",
    "bus_distribution_efficiency",
    "battery_charge_efficiency",
    "battery_discharge_efficiency",
    "battery_depth_of_discharge",
    "array_output_density",
    "array_eol_output_factor",
    "array_design_reserve_factor"
)

$missing = @($required | Where-Object { -not $values.ContainsKey($_) })
if ($missing.Count -gt 0) {
    throw "Missing numeric inputs: $($missing -join ', '). No results written."
}

$busEfficiency = $values["bus_distribution_efficiency"]
$chargeEfficiency = $values["battery_charge_efficiency"]
$dischargeEfficiency = $values["battery_discharge_efficiency"]
$depthOfDischarge = $values["battery_depth_of_discharge"]
$arrayDensity = $values["array_output_density"]
$eolFactor = $values["array_eol_output_factor"]
$reserveFactor = $values["array_design_reserve_factor"]
$eclipseHours = $values["eclipse_duration"]
$sunlitHours = $values["sunlit_duration"]
$auxLoad = $values["auxiliary_spacecraft_load"]

if (
    $busEfficiency -le 0 -or $busEfficiency -gt 1 -or
    $chargeEfficiency -le 0 -or $chargeEfficiency -gt 1 -or
    $dischargeEfficiency -le 0 -or $dischargeEfficiency -gt 1 -or
    $depthOfDischarge -le 0 -or $depthOfDischarge -gt 1 -or
    $eolFactor -le 0 -or $arrayDensity -le 0 -or
    $reserveFactor -le 0 -or $sunlitHours -le 0 -or
    $eclipseHours -lt 0 -or $auxLoad -lt 0
) {
    throw "One or more inputs are outside their valid screening range. No results written."
}

$cases = @(
    @{
        Name = "120 kW sustained"
        ComputeLoad = $values["compute_average_power"]
        Note = "Sustained compute case; auxiliary load is the zero-load lower-bound placeholder."
    },
    @{
        Name = "150 kW peak stress"
        ComputeLoad = $values["compute_peak_power"]
        Note = "Peak load held through eclipse and recharge; stress case, not a workload prediction."
    }
)

$results = foreach ($case in $cases) {
    $totalLoad = $case.ComputeLoad + $auxLoad
    $eclipseBusEnergy = $totalLoad * $eclipseHours
    $batteryNominal = $eclipseBusEnergy / ($dischargeEfficiency * $depthOfDischarge)

    $arrayOutputWithEclipse = ($totalLoad / $busEfficiency) * (
        1 + ($eclipseHours / $sunlitHours) /
        ($chargeEfficiency * $dischargeEfficiency)
    )

    $arrayOutputNoEclipse = $totalLoad / $busEfficiency
    $areaNoEclipse = ($arrayOutputNoEclipse * 1000 * $reserveFactor) / ($arrayDensity * $eolFactor)
    $areaWithEclipse = ($arrayOutputWithEclipse * 1000 * $reserveFactor) / ($arrayDensity * $eolFactor)

    $commonNote = "$($case.Note) Screening only. Array density life-point and area convention are unresolved; check for EOL double-counting."

    @(
        [pscustomobject]@{
            scenario_id = $ScenarioId
            case = $case.Name
            indicator = "Eclipse energy delivered to bus"
            value = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $eclipseBusEnergy)
            unit = "kWh"
            status = "SCREENING_ONLY"
            note = $commonNote
        }
        [pscustomobject]@{
            scenario_id = $ScenarioId
            case = $case.Name
            indicator = "Nominal battery energy"
            value = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $batteryNominal)
            unit = "kWh"
            status = "SCREENING_ONLY"
            note = $commonNote
        }
        [pscustomobject]@{
            scenario_id = $ScenarioId
            case = $case.Name
            indicator = "Required array output during sunlight with eclipse recharge"
            value = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $arrayOutputWithEclipse)
            unit = "kW"
            status = "SCREENING_ONLY"
            note = $commonNote
        }
        [pscustomobject]@{
            scenario_id = $ScenarioId
            case = $case.Name
            indicator = "Array area, no regular eclipse"
            value = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $areaNoEclipse)
            unit = "m^2"
            status = "SCREENING_ONLY"
            note = $commonNote
        }
        [pscustomobject]@{
            scenario_id = $ScenarioId
            case = $case.Name
            indicator = "Array area, beta-zero eclipse and recharge"
            value = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $areaWithEclipse)
            unit = "m^2"
            status = "SCREENING_ONLY"
            note = $commonNote
        }
    )
}

$results | Export-Csv -Path $outputPath -NoTypeInformation -Encoding utf8
$results | Format-Table case,indicator,value,unit,status -AutoSize
Write-Host "Screening results written to $outputPath"

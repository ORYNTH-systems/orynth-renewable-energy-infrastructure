param(
    [string]$ScenarioId = "ORC-001-BASELINE"
)

$ErrorActionPreference = "Stop"
$inputPath = Join-Path $PSScriptRoot "scenario-inputs.csv"
$outputPath = Join-Path $PSScriptRoot "thermal-screening-results.csv"

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
    "compute_load_to_heat_fraction",
    "radiator_reference_flux",
    "radiator_performance_factor",
    "radiator_design_reserve_factor",
    "radiator_effective_emitting_faces"
)

$missing = @($required | Where-Object { -not $values.ContainsKey($_) })
if ($missing.Count -gt 0) {
    throw "Missing numeric inputs: $($missing -join ', '). No results written."
}

$flux = $values["radiator_reference_flux"]
$derate = $values["radiator_performance_factor"]
$reserve = $values["radiator_design_reserve_factor"]
$heatFraction = $values["compute_load_to_heat_fraction"]
$faces = $values["radiator_effective_emitting_faces"]

if (
    $flux -le 0 -or $derate -le 0 -or $derate -gt 1 -or
    $reserve -le 0 -or $heatFraction -lt 0 -or $faces -lt 1
) {
    throw "A thermal input is outside its valid screening range. No results written."
}

$cases = @(
    @{ Name = "120 kW sustained"; ComputePower = $values["compute_average_power"] }
    @{ Name = "150 kW peak"; ComputePower = $values["compute_peak_power"] }
)

$results = foreach ($case in $cases) {
    $heatW = $case.ComputePower * 1000 * $heatFraction
    $nominalEmittingArea = $heatW / $flux
    $effectiveFlux = $flux * $derate
    $stressEmittingArea = ($heatW / $effectiveFlux) * $reserve

    $note = "Compute-only screen. Auxiliary and environmental heat, operating temperature, emissivity, absorptivity, and view factors remain OPEN. Flux area convention unresolved."

    @(
        [pscustomobject]@{
            scenario_id = $ScenarioId
            case = $case.Name
            indicator = "Nominal total emitting area, per-face flux convention"
            value = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $nominalEmittingArea)
            unit = "m^2"
            status = "SCREENING_ONLY"
            note = $note
        }
        [pscustomobject]@{
            scenario_id = $ScenarioId
            case = $case.Name
            indicator = "Nominal physical panel footprint, equal two-face assumption"
            value = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", ($nominalEmittingArea / $faces))
            unit = "m^2"
            status = "SCREENING_ONLY"
            note = $note
        }
        [pscustomobject]@{
            scenario_id = $ScenarioId
            case = $case.Name
            indicator = "Nominal physical footprint, if flux is already per panel footprint"
            value = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $nominalEmittingArea)
            unit = "m^2"
            status = "SCREENING_ONLY"
            note = $note
        }
        [pscustomobject]@{
            scenario_id = $ScenarioId
            case = $case.Name
            indicator = "Stress total emitting area, derate and reserve applied"
            value = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $stressEmittingArea)
            unit = "m^2"
            status = "SCREENING_ONLY"
            note = $note
        }
        [pscustomobject]@{
            scenario_id = $ScenarioId
            case = $case.Name
            indicator = "Stress physical panel footprint, equal two-face assumption"
            value = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", ($stressEmittingArea / $faces))
            unit = "m^2"
            status = "SCREENING_ONLY"
            note = $note
        }
        [pscustomobject]@{
            scenario_id = $ScenarioId
            case = $case.Name
            indicator = "Stress physical footprint, if flux is already per panel footprint"
            value = [string]::Format([Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", $stressEmittingArea)
            unit = "m^2"
            status = "SCREENING_ONLY"
            note = $note
        }
    )
}

$results | Export-Csv -Path $outputPath -NoTypeInformation -Encoding utf8
$results | Format-Table case,indicator,value,unit,status -AutoSize
Write-Host "Thermal screening results written to $outputPath"

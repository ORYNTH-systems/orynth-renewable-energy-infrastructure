param(
    [string]$ScenarioId = "ORC-001-BASELINE"
)

$ErrorActionPreference = "Stop"
$inputPath = Join-Path $PSScriptRoot "scenario-inputs.csv"
$outputPath = Join-Path $PSScriptRoot "scenario-results.csv"

$rows = Import-Csv $inputPath
$inputs = @{}

foreach ($row in ($rows | Where-Object { $_.scenario_id -eq $ScenarioId })) {
    $number = 0.0
    $valid = (
        $row.status -notin @("OPEN", "SEPARATE") -and
        -not [string]::IsNullOrWhiteSpace($row.value) -and
        [double]::TryParse(
            $row.value,
            [Globalization.NumberStyles]::Float,
            [Globalization.CultureInfo]::InvariantCulture,
            [ref]$number
        )
    )

    if ($valid) {
        $inputs[$row.parameter] = $number
    }
}

if ($inputs.Count -eq 0) {
    throw "No numeric inputs found for scenario '$ScenarioId'. Fill scenario-inputs.csv with sourced or measured values first."
}

$results = [System.Collections.Generic.List[object]]::new()

function Add-RatioResult {
    param(
        [string]$Name,
        [string]$NumeratorKey,
        [string]$DenominatorKey,
        [string]$Unit,
        [hashtable]$Values,
        [System.Collections.Generic.List[object]]$Output
    )

    if (-not $Values.ContainsKey($NumeratorKey) -or -not $Values.ContainsKey($DenominatorKey)) {
        $Output.Add([pscustomobject]@{
            scenario_id = $ScenarioId
            indicator   = $Name
            value       = ""
            unit        = $Unit
            status      = "OPEN"
            note        = "Required inputs are missing or still OPEN."
        })
        return
    }

    $denominator = [double]$Values[$DenominatorKey]
    if ($denominator -eq 0) {
        $Output.Add([pscustomobject]@{
            scenario_id = $ScenarioId
            indicator   = $Name
            value       = ""
            unit        = $Unit
            status      = "INVALID"
            note        = "Denominator is zero."
        })
        return
    }

    $ratio = [double]$Values[$NumeratorKey] / $denominator
    $Output.Add([pscustomobject]@{
        scenario_id = $ScenarioId
        indicator   = $Name
        value       = $ratio.ToString("G", [Globalization.CultureInfo]::InvariantCulture)
        unit        = $Unit
        status      = "CALCULATED"
        note        = "$NumeratorKey / $DenominatorKey"
    })
}

Add-RatioResult "Service fulfillment" "useful_compute_service_delivered" "requested_compute_service" "fraction" $inputs $results
Add-RatioResult "Reserve fraction" "available_reserve_energy" "required_reserve_energy" "fraction" $inputs $results
Add-RatioResult "Lifecycle energy intensity" "lifecycle_energy_consumed" "useful_compute_service_delivered" "kWh lifecycle / kWh compute" $inputs $results
Add-RatioResult "Material recovery fraction" "recovered_hardware_mass" "retired_hardware_mass" "fraction" $inputs $results

if ($inputs.ContainsKey("retired_hardware_mass") -and $inputs.ContainsKey("recovered_hardware_mass")) {
    $unrecovered = $inputs["retired_hardware_mass"] - $inputs["recovered_hardware_mass"]
    $massStatus = if ($unrecovered -lt 0) { "INVALID" } else { "CALCULATED" }
    $massNote = if ($unrecovered -lt 0) { "Recovered mass exceeds retired mass." } else { "Retired mass minus recovered mass." }

    $results.Add([pscustomobject]@{
        scenario_id = $ScenarioId
        indicator   = "Unrecovered hardware mass"
        value       = $unrecovered.ToString("G", [Globalization.CultureInfo]::InvariantCulture)
        unit        = "kg"
        status      = $massStatus
        note        = $massNote
    })
} else {
    $results.Add([pscustomobject]@{
        scenario_id = $ScenarioId
        indicator   = "Unrecovered hardware mass"
        value       = ""
        unit        = "kg"
        status      = "OPEN"
        note        = "Retired and recovered mass inputs are required."
    })
}

$results | Export-Csv -Path $outputPath -NoTypeInformation -Encoding utf8
$results | Format-Table -AutoSize
Write-Host "Results written to $outputPath"

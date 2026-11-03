param(
    [string]$ScenarioId = "ORC-001-BASELINE"
)

$ErrorActionPreference = "Stop"
$casesPath = Join-Path $PSScriptRoot "fleet-scaling-cases.csv"
$powerPath = Join-Path $PSScriptRoot "power-screening-results.csv"
$thermalPath = Join-Path $PSScriptRoot "thermal-screening-results.csv"
$outputPath = Join-Path $PSScriptRoot "fleet-scaling-results.csv"

function Get-ScreeningValue {
    param(
        [string]$Path,
        [string]$CaseName,
        [string]$Indicator
    )

    $matches = @(Import-Csv $Path | Where-Object {
        $_.scenario_id -eq $ScenarioId -and
        $_.case -eq $CaseName -and
        $_.indicator -eq $Indicator
    })

    if ($matches.Count -ne 1) {
        throw "Expected one result for '$CaseName / $Indicator' in '$Path'; found $($matches.Count)."
    }

    $number = 0.0
    if (-not [double]::TryParse(
        $matches[0].value,
        [Globalization.NumberStyles]::Float,
        [Globalization.CultureInfo]::InvariantCulture,
        [ref]$number
    )) {
        throw "Result '$Indicator' is not numeric."
    }

    return $number
}

$computeKW = 120.0
$batteryKWh = Get-ScreeningValue $powerPath "120 kW sustained" "Nominal battery energy"
$arrayNoEclipse = Get-ScreeningValue $powerPath "120 kW sustained" "Array area, no regular eclipse"
$arrayEclipse = Get-ScreeningValue $powerPath "120 kW sustained" "Array area, beta-zero eclipse and recharge"
$radiatorTwoFace = Get-ScreeningValue $thermalPath "120 kW sustained" "Stress physical panel footprint, equal two-face assumption"
$radiatorFootprintBasis = Get-ScreeningValue $thermalPath "120 kW sustained" "Stress physical footprint, if flux is already per panel footprint"

$results = foreach ($case in (Import-Csv $casesPath)) {
    $nodes = 0
    if (-not [int]::TryParse($case.node_count, [ref]$nodes) -or $nodes -lt 1) {
        throw "Invalid node_count in fleet case '$($case.scenario_id)'."
    }

    [pscustomobject]@{
        fleet_case = $case.scenario_id
        node_count = $nodes
        aggregate_sustained_compute_GW = [string]::Format(
            [Globalization.CultureInfo]::InvariantCulture, "{0:0.######}", ($nodes * $computeKW / 1000000)
        )
        nominal_battery_energy_MWh = [string]::Format(
            [Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", ($nodes * $batteryKWh / 1000)
        )
        array_area_no_regular_eclipse_m2 = [string]::Format(
            [Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", ($nodes * $arrayNoEclipse)
        )
        array_area_beta_zero_eclipse_m2 = [string]::Format(
            [Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", ($nodes * $arrayEclipse)
        )
        radiator_stress_area_equal_two_face_m2 = [string]::Format(
            [Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", ($nodes * $radiatorTwoFace)
        )
        radiator_stress_area_footprint_basis_m2 = [string]::Format(
            [Globalization.CultureInfo]::InvariantCulture, "{0:0.###}", ($nodes * $radiatorFootprintBasis)
        )
        status = "ARITHMETIC_SCREEN_ONLY"
        note = "Linear multiplication of one-node screening values. Excludes deployment, interference, service, lifecycle, and fleet-level effects. 20 GW terrestrial objective is separate."
    }
}

$results | Export-Csv -Path $outputPath -NoTypeInformation -Encoding utf8
$results | Format-Table fleet_case,node_count,aggregate_sustained_compute_GW,nominal_battery_energy_MWh,array_area_beta_zero_eclipse_m2,radiator_stress_area_equal_two_face_m2 -AutoSize
Write-Host "Fleet scaling results written to $outputPath"

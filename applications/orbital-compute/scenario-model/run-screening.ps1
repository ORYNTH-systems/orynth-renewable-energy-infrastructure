param(
    [string]$ScenarioId = "ORC-001-BASELINE"
)

$ErrorActionPreference = "Stop"
$steps = @(
    "screen-power-budget.ps1",
    "screen-thermal-budget.ps1",
    "evaluate-scenario.ps1",
    "scale-fleet.ps1"
)

foreach ($name in $steps) {
    $path = Join-Path $PSScriptRoot $name
    if (-not (Test-Path $path)) {
        throw "Required screening script is missing: $path"
    }

    Write-Host "`n=== Running $name ===" -ForegroundColor Cyan
    & $path -ScenarioId $ScenarioId
}

Write-Host "`nScreening run complete. Results are screening outputs, not validated flight performance." -ForegroundColor Green

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

Add-RatioResult "Compute-energy coverage proxy (not service fulfillment)" "useful_compute_service_delivered" "requested_compute_service" "fraction" $inputs $results
Add-RatioResult "Available-to-required reserve energy ratio (proxy)" "available_reserve_energy" "required_reserve_energy" "fraction" $inputs $results
Add-RatioResult "Lifecycle energy per compute-energy delivered (proxy)" "lifecycle_energy_consumed" "useful_compute_service_delivered" "kWh lifecycle / kWh compute" $inputs $results
Add-RatioResult "Gross recovered hardware mass fraction (proxy)" "recovered_hardware_mass" "retired_hardware_mass" "fraction" $inputs $results

if ($inputs.ContainsKey("retired_hardware_mass") -and $inputs.ContainsKey("recovered_hardware_mass")) {
    $unrecovered = $inputs["retired_hardware_mass"] - $inputs["recovered_hardware_mass"]
    $massStatus = if ($unrecovered -lt 0) { "INVALID" } else { "CALCULATED" }
    $massNote = if ($unrecovered -lt 0) { "Recovered mass exceeds retired mass." } else { "Gross mass subtraction only; verified disposition is not established." }

    $results.Add([pscustomobject]@{
        scenario_id = $ScenarioId
        indicator   = "Gross unrecovered hardware mass proxy"
        value       = $unrecovered.ToString("G", [Globalization.CultureInfo]::InvariantCulture)
        unit        = "kg"
        status      = $massStatus
        note        = $massNote
    })
} else {
    $results.Add([pscustomobject]@{
        scenario_id = $ScenarioId
        indicator   = "Gross unrecovered hardware mass proxy"
        value       = ""
        unit        = "kg"
        status      = "OPEN"
        note        = "Retired and recovered mass inputs are required."
    })
}


$canonicalOpen = @(
    [pscustomobject]@{ indicator="ABN-001 Solar sufficiency"; unit="ratio"; note="Requires orbit-resolved available solar-bus energy and matching demand and loss terms." }
    [pscustomobject]@{ indicator="ABN-002 Validated service fulfillment"; unit="ratio"; note="Requires requested and delivered workload-specific service units with matching quality, latency, and interval." }
    [pscustomobject]@{ indicator="ABN-003 Critical reserve coverage"; unit="hours"; note="Requires usable stored energy above required reserve and critical-load power." }
    [pscustomobject]@{ indicator="ABN-004 Power headroom"; unit="kW"; note="Requires qualified end-of-life bus capacity and concurrent load." }
    [pscustomobject]@{ indicator="ABN-005 Thermal headroom"; unit="kW thermal"; note="Requires test-correlated rejection capacity and total environmental and internal heat load." }
    [pscustomobject]@{ indicator="ABN-006 Communications headroom"; unit="Gbit/s"; note="Requires measured link capacity and workload traffic profile." }
    [pscustomobject]@{ indicator="ABN-007 Curtailed solar energy"; unit="kWh"; note="Requires available-versus-captured solar energy for a stated interval." }
    [pscustomobject]@{ indicator="ABN-008 Unmet service"; unit="workload-specific units"; note="Requires request records and validated completion, delay, rejection, and failure records." }
    [pscustomobject]@{ indicator="ABN-009 Lifecycle energy intensity"; unit="kWh per service unit"; note="Requires allocated lifecycle energy and validated useful workload service." }
    [pscustomobject]@{ indicator="ABN-010 Verified material recovery fraction"; unit="ratio"; note="Requires requalified reused plus verified recycled mass over retired recoverable mass." }
    [pscustomobject]@{ indicator="ABN-011 Unrecovered material mass"; unit="kg by material"; note="Requires as-built material inventory and verified disposition records." }
    [pscustomobject]@{ indicator="ABN-012 Terrestrial burden transfer"; unit="source-specific quantities"; note="Requires attributable grid energy, water, fuel, manufacturing, and launch records." }
    [pscustomobject]@{ indicator="ABN-013 Net service capacity added"; unit="workload-specific units per interval"; note="Requires validated service capacity, degradation, outage, and retirement data." }
    [pscustomobject]@{ indicator="ABN-014 Abundance claim scope"; unit="text"; note="Requires declared boundary, horizon, population served, and evidence classes." }
)

foreach ($item in $canonicalOpen) {
    $results.Add([pscustomobject]@{
        scenario_id = $ScenarioId
        indicator   = $item.indicator
        value       = ""
        unit        = $item.unit
        status      = "OPEN"
        note        = $item.note
    })
}
$results | Export-Csv -Path $outputPath -NoTypeInformation -Encoding utf8
$results | Format-Table -AutoSize
Write-Host "Results written to $outputPath"


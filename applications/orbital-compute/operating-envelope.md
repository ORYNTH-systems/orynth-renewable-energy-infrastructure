# ORC-001 Operating Envelope and Compute Dispatch Gate

**Status:** Proposed engineering requirement. Not flight-qualified.

## Purpose

Tie electrical availability, thermal rejection, storage reserve, and sensor validity to compute workload admission. The power and thermal calculators provide screening estimates; this gate requires current measured or validated inputs before consequential compute is admitted.

## Admission conditions

A workload may enter `AVAILABLE` only when all of the following are true for the planned workload interval:

1. The power model is current and predicts enough bus power for the workload, spacecraft support loads, losses, and required reserve.
2. Storage state and battery limits support the planned orbit phase, eclipse, recovery period, and fault reserve.
3. The thermal model predicts component temperatures below their verified limits with the required engineering margin.
4. Required temperature, flow, pump, radiator deployment, power, and storage telemetry is valid and fresh.
5. The orbit phase, workload profile, and model version used in the assessment are identified and recorded.

No numerical limits are set here. They require component qualification and system-level thermal and electrical analysis.

## Dispatch states

| State | Entry condition | Permitted action |
|---|---|---|
| `AVAILABLE` | All admission conditions pass with verified margins | Admit workload within the assessed envelope |
| `THROTTLED` | A reduced workload has a newly assessed safe power and thermal envelope | Run only the bounded workload that passes |
| `BLOCKED` | Any required input is missing, stale, invalid, outside limits, or has no verified safe margin | Reject new high-power workload; transition existing work according to the approved safe-state procedure |

The controller must not treat an unknown value as a passing value. A transition from `BLOCKED` or `THROTTLED` to `AVAILABLE` requires a fresh assessment.

## Required record for each assessment

Record the workload identifier and power profile; orbit phase; power, storage, and thermal telemetry references; model versions; applicable limits and margins; decision state; and any throttle, rejection, or safe-state action.

## Engineering closure

Resolve the admission thresholds, sensor freshness limits, prediction horizon, margin policy, safe-state sequence, and fault response through qualified component data, integrated analysis, and thermal-vacuum and electrical testing. Track these items in `engineering-closure-register.csv`.

## Scope boundary

This operating gate does not establish orbital deployment capacity, useful service delivery, lifecycle abundance, or mission safety. The terrestrial 20 GW objective remains separate from orbital power and deployment measures.

# System Boundary: Orbital Solar Compute

**Status:** PROPOSED

## System under consideration

A distributed set of orbital spacecraft that collect solar energy, convert it to electrical power, operate compute and communications hardware, reject waste heat through radiators, and exchange data with other spacecraft and ground systems.

The boundary includes the complete path from incident sunlight to the authorized compute effect and its attributable record. It includes power conversion, storage, distribution, thermal transport and rejection, communications, fault response, servicing or replacement, and end-of-life disposition.

## EMAH state mapping

| EMAH state / transition | Orbital-compute interpretation | Minimum evidence needed |
|---|---|---|
| Generation | Incident solar energy converted by arrays into electrical output | Orbit and illumination profile; array characteristics; telemetry; degradation basis |
| Qualification | Output is within verified voltage, current, temperature, and health limits | Calibration, fault status, environmental limits, source identity |
| Storage | Energy reserved in batteries or other onboard storage | State of charge, usable capacity, cycle/temperature limits, eclipse forecast |
| Reservation | Power and thermal headroom assigned to a workload and duration | Workload demand, reserve policy, competing loads, time window |
| Transfer | Power delivered over the spacecraft distribution path; data transferred over links | Metered bus state, conversion losses, link state, route and destination |
| Execution | Compute begins only while authority, power, thermal, and communication predicates hold | Attempt-specific authorization and current admissibility decision |
| Effect | Compute output or transmitted data produces the requested consequential result | Workload identity, action digest, output destination, completion record |
| Recovery / reintegration | Faulted or depleted subsystem is isolated, repaired or replenished, retested, and readmitted | Fault record, repair/replacement provenance, requalification result |
| Regenerative continuity | Materials, components, and capacity return to an admissible lifecycle or are safely retired | Reuse/recovery record or end-of-life and disposal evidence |

## Boundary conditions

- Generation, stored energy, and delivered compute power are separate quantities.
- Electrical power and thermal rejection are separate budgets. A power figure cannot be treated as a radiator rating without an explicit heat balance.
- Solar availability is orbit- and time-dependent. “Near-continuous sunlight” is not equivalent to zero eclipse risk or guaranteed energy.
- Ground infrastructure remains in the boundary wherever it supplies control, data, tracking, manufacturing, launch, or recovery services.
- Each consequential workload must be re-evaluated at the effect boundary against current energy, thermal, authority, and communications state.
- Loss of required telemetry, power margin, thermal margin, or valid authority causes bounded operation, suspension, or fail-closed shutdown according to an admitted policy.

## Non-claims

This boundary is a systems-engineering frame, not a flight qualification, orbital safety case, or feasibility finding. No target in `target-register.md` closes these conditions by itself.

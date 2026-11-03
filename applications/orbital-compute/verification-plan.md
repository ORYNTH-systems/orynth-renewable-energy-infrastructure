# ORC-001 Verification Plan

**Status:** PROPOSED — sequence and pass gates for design closure

## Gate 1: Model closure

Deliver a reproducible orbit, power, and thermal model with linked assumptions and units. Model nominal, peak compute, eclipse, degraded array, battery degradation, radiator degradation, communications loss, and single-fault cases.

**Pass when:** every load and heat path has an owner and a bounded value or explicit uncertainty; the energy balance closes over the orbit; temperatures remain within limits; and all non-passing cases invoke a defined safe response.

## Gate 2: Ground electrical and compute breadboard

Connect a representative compute load to a metered power bus, power-conditioning unit, and battery emulator or storage unit. Exercise load steps, charge/discharge limits, brownouts, sensor loss, and workload throttling.

**Pass when:** measured balances match the model within declared tolerances; overload or missing-state cases block new compute and preserve required survival functions.

## Gate 3: Thermal-vacuum demonstration

Test representative processor/cold-plate/loop/radiator hardware in thermal vacuum, using representative absorbed heat and orientations. NASA's thermal-control guidance supports this as standard spacecraft thermal verification practice; test conditions and correlation criteria must be mission-specific.

**Pass when:** heat transport and radiator rejection meet the declared workload envelope, temperature limits, and fault response in the test configuration.

## Gate 4: Integrated orbital pathfinder

Fly a lower-power unit that validates solar generation, storage, onboard compute, thermal telemetry, radiation handling, and communications under actual orbital conditions. Do not claim that a low-power pathfinder validates 120 kW operation without an explicit scaling model and evidence.

**Pass when:** telemetry demonstrates solar-only operation over the declared mission interval, thermal limits are met, and fault responses occur as specified.

## Gate 5: Higher-power node and cluster

Scale only after the preceding gates close. Revalidate array deployment, radiator geometry, structural modes, launch loads, pointing, link contention, servicing, fleet control, collision avoidance, and end-of-life operations at every scale transition.

**Pass when:** measured node performance and a validated fleet model support the next declared scale; an extrapolation alone does not pass the gate.

## Immediate analysis work

1. Select a candidate workload and its sustained/peak profile.
2. Compare two candidate orbits and calculate sunlight/eclipses across the full year.
3. Populate the electrical load and heat-source tables with explicit estimates and confidence ranges.
4. Compute storage energy, array area, and radiator area with margins and degradation.
5. Identify the first ground test article and define its pass/fail telemetry before hardware selection.

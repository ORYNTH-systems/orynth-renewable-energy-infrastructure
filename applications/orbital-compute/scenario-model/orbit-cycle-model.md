# ORC-001 Coupled Orbit-Cycle Model

**Status:** Proposed model definition; operational simulation inputs are incomplete.

## Cases

`orbit-cycle-cases.csv` defines a 120 kW sustained case and a 150 kW peak stress case for the 700 km screening orbit. The conservative timing case is 63.487 minutes sunlit and 35.286 minutes in eclipse per 98.773-minute orbit.

The 150 kW case holds peak load through eclipse and recharge as a stress case. Zero auxiliary load is a lower-bound placeholder. Battery nominal energies are prior screening estimates, not qualified capacities.

## Required operational inputs still OPEN

- End-of-life array power available at the regulated bus.
- Battery charge and discharge power limits.
- Initial battery state of charge and required reserve floor.
- Radiator heat-rejection capacity at the modeled operating state.
- Actual auxiliary electrical and thermal loads.

The existing array-area and radiator-area calculations are sizing screens. They do not supply these operational values.

## Intended time-step balance

For each interval, classify the orbit as sunlit or eclipse and record:

- Array power delivered to the bus.
- Compute and auxiliary demand.
- Battery charge or discharge, including efficiency and power limits.
- Stored energy and state of charge relative to the reserve floor.
- Compute and auxiliary heat load.
- Available radiator rejection and thermal margin.
- Dispatch state: `AVAILABLE`, `THROTTLED`, or `BLOCKED`.

The simulator must not produce an operational pass when required inputs are `OPEN`. It must report which input prevents calculation. It must not treat the zero-auxiliary placeholder as measured spacecraft performance.

## Scope

This model will connect the power budget, thermal budget, and proposed operating gate. It will not establish orbit-specific annual performance, flight safety, launch cadence, fleet feasibility, or useful lifetime service without validated mission data.

## Execution and model limits

Run `simulate-orbit-cycle.ps1` directly or through `run-screening.ps1`. The simulator requires end-of-life array power delivered at the regulated bus, battery charge and discharge power limits, initial state of charge, required reserve energy, and radiator rejection capacity. It writes an `OPEN` summary and does not create a time series while required operational inputs are missing.

When those inputs are supplied, the current screen uses one-minute steps and constant compute load by orbit phase. It treats auxiliary electrical load as heat and omits environmental heat, thermal transients, battery temperature behavior, detailed array pointing effects, and component-specific dynamics. A generated time series remains a screening result, not a validated flight trajectory.

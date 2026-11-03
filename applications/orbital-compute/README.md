# EMAH Application Profile: Orbital Solar Compute

**Status:** PROPOSED - engineering concept package; not a canonical EMAH amendment
**Version:** 0.2.0  
**Parent architecture:** EMAH / AHME - ORYNTH Renewable Energy Infrastructure

## Purpose

This profile applies EMAH's renewable-energy execution and continuity model to a distributed orbital compute system powered by onboard solar generation. It identifies the energy, thermal, communications, lifecycle, and authority states that must be closed before an orbital compute deployment can be treated as operationally admissible.

The profile does not assert that gigawatt-scale orbital compute is currently demonstrated or economically feasible. SpaceX statements are recorded as external targets with their original scope; they are not adopted as ORYNTH requirements or verified engineering results.

## Architectural fit

The profile instantiates the existing EMAH separation:

**Capability != Authority != Admissibility != Execution != Effect**

An array's ability to generate power does not establish that power is qualified, available to a particular workload, reserved, transferred, or authorized for consequential use. A compute command does not establish that its energy and thermal budgets remain admissible at effect time.

## Scope

Included:

- solar collection in orbit and conversion to spacecraft electrical power;
- eclipse response, storage, degradation, and reserve margins;
- allocation of power to compute, thermal control, communications, and spacecraft services;
- transport of waste heat from electronics to radiators and verified heat rejection;
- intersatellite and space-to-ground data transfer as resource-constrained effects;
- degraded operation, shutdown, recovery, requalification, and end-of-life disposition;
- mapping of externally stated capacity targets to EMAH states without changing their units or scope.

Excluded from this profile's current claims:

- a validated 20 GW orbital solar design;
- a demonstrated 100 GW-per-year orbital deployment rate;
- a completed spaceflight prototype or verified thermal model;
- claims that a SpaceX target is an ORYNTH target;
- claims that orbital solar makes the system zero-impact or removes launch, debris, radiation, communications, or servicing constraints.

## Core files

- `system-boundary.md` - physical and governance boundary.
- `target-register.md` - sourced SpaceX figures and scope distinctions.
- `energy-and-thermal-model.md` - required power and heat accounting.
- `reference-node.md` - ORC-001 concept and first-order sizing arithmetic.
- `requirements.md` - preliminary, testable requirements.
- `verification-plan.md` - model, ground, thermal-vacuum, and flight gates.
- `obligations.md` - open proof and validation obligations.

## Admission rule

This package remains PROPOSED until its boundary, target records, obligations, and interfaces are explicitly reviewed and admitted under the repository's governance process. Draft status, calculations, or simulation outputs do not by themselves establish verification or canonical status.

## Current build state

ORC-001 has screening cases for 120 kW sustained compute and a 150 kW peak-stress load. The candidate 700 km beta-zero timing case uses a 98.773-minute period with 63.487 minutes sunlit and 35.286 minutes in eclipse. These are screening inputs, not a mission-selected orbit.

| Case | Array output during sunlight with eclipse recharge | Beta-zero screening array area | Nominal battery energy |
|---|---:|---:|---:|
| 120 kW sustained | about 204.1 kW | about 1,225 m² | about 92.9 kWh |
| 150 kW peak-stress | about 255.1 kW | about 1,531 m² | about 116.1 kWh |

These power results use recorded screening assumptions, including zero auxiliary load as a lower-bound placeholder. The orbit-cycle simulation remains `OPEN` pending actual array bus power, battery power limits and reserve, initial state of charge, and radiator rejection capacity.

The thermal screen treats compute load as heat. At 1,400 W/m² with a provisional 20% derate and 20% reserve, the equal-two-face physical footprint is about 64.3 m² for 120 kW and 80.4 m² for 150 kW. If the flux is already defined per physical panel footprint, those areas double. The 1,300 W/m² sensitivity level gives about 69.2 m² and 86.5 m² under the same illustrative factors and equal-two-face assumption. These are screening calculations, not a validated radiator design.

The 1,300 W/m² figure is attributed to a public Elon Musk post and is not established here as a formal SpaceX engineering specification. The separate 1,400 W/m² figure is from SpaceX's SEC-filed June 2026 interview transcript. The emitting-face versus panel-footprint convention remains unresolved.

The simpler quotients in `reference-node.md`—600 m² of array for 150 kW at 250 W/m², and 86–107 m² of radiator at 1,400 W/m²—are idealized direct divisions. They omit eclipse recharge, margins, environmental heat, and unresolved area conventions; they are not the current system-level sizing results.

## Orbit budget

See `orbit-budget/README.md` for candidate-orbit power and thermal screening budgets.

## Abundance measurement layer

See `abundance/README.md` for physical energy, service, reserve, recovery, and lifecycle-burden indicators.

## Engineering closure register

See [`engineering-closure-register.csv`](engineering-closure-register.csv) for the open evidence and validation items that block closing the ORC-001 screening model.

## Operating envelope and compute dispatch gate

See [`operating-envelope.md`](operating-envelope.md) for the proposed admission, throttle, and block conditions connecting power, storage, thermal limits, and telemetry validity.

## Abundance measurement contract

See [`abundance/measurement-contract.md`](abundance/measurement-contract.md) for the unit, boundary, evidence, and calculation rules for the 14 proposed abundance indicators.

## Engineering validation package

See [engineering-validation-package.md](engineering-validation-package.md) for the proposed evidence request matrix and closure criteria for ORC-CL-001 through ORC-CL-013. The package identifies review evidence needed from orbital, electrical, solar-array, storage, thermal, compute, communications, lifecycle, launch, manufacturing, and systems engineering. All entries remain requests; they do not represent engineering approval.

## Lifetime abundance accounting

See [abundance/lifetime-accounting.md](abundance/lifetime-accounting.md) and its three ledgers for workload service, lifecycle energy, and material flows. All quantities begin `OPEN`; the ledgers require traceable sources and evidence before any lifetime abundance indicator can be calculated or marked verified.

## CEO technical review brief

See [CEO-technical-review-brief.md](CEO-technical-review-brief.md) for the public screening summary and the requested technical review of assumptions and first material constraints.

## Project status and review guide

See [PROJECT-STATUS.md](PROJECT-STATUS.md) for what ORC-001 contains, what the screening work does not establish, its current open inputs, and the next engineering steps.

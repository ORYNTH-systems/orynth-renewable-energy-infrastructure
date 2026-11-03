# EMAH Application Profile: Orbital Solar Compute

**Status:** PROPOSED — engineering concept package; not a canonical EMAH amendment  
**Version:** 0.2.0  
**Parent architecture:** EMAH / AHME — ORYNTH Renewable Energy Infrastructure

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

- `system-boundary.md` — physical and governance boundary.
- `target-register.md` — sourced SpaceX figures and scope distinctions.
- `energy-and-thermal-model.md` — required power and heat accounting.
- `reference-node.md` — ORC-001 concept and first-order sizing arithmetic.
- `requirements.md` — preliminary, testable requirements.
- `verification-plan.md` — model, ground, thermal-vacuum, and flight gates.
- `obligations.md` — open proof and validation obligations.

## Admission rule

This package remains PROPOSED until its boundary, target records, obligations, and interfaces are explicitly reviewed and admitted under the repository's governance process. Draft status, calculations, or simulation outputs do not by themselves establish verification or canonical status.

## Current build state

The first engineering concept is now defined as ORC-001. The public SpaceX AI1 values are comparison inputs only. Interpreting the stated 250 W/m² as effective array output gives a first-order 600 m² for 150 kW. At the stated 1,400 W/m² radiator heat-rejection assumption, 120–150 kW implies about 86–107 m². These are conditional arithmetic screens from company-stated assumptions; auxiliary loads, orbital environment, orientation, degradation, margins, and thermal test correlation remain open.

## Orbit budget

See `orbit-budget/README.md` for candidate-orbit power and thermal screening budgets.

## Abundance measurement layer

See `abundance/README.md` for physical energy, service, reserve, recovery, and lifecycle-burden indicators.

## Engineering closure register

See [`engineering-closure-register.csv`](engineering-closure-register.csv) for the open evidence and validation items that block closing the ORC-001 screening model.

## Operating envelope and compute dispatch gate

See [`operating-envelope.md`](operating-envelope.md) for the proposed admission, throttle, and block conditions connecting power, storage, thermal limits, and telemetry validity.

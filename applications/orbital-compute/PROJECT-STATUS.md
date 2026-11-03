# ORC-001 Project Status and Review Guide

**Status:** Proposed concept and screening model; engineering validation remains open.

## What this repository contains

ORC-001 is an organized screening effort for an orbital solar-powered compute node. It currently includes:

- a candidate orbit and sunlight/eclipse timing case;
- power, storage, and thermal screening calculators;
- a coupled orbit-cycle model that identifies the operational inputs still needed;
- one-factor sensitivity sweeps for documented and analyst-selected assumptions;
- an engineering evidence request matrix covering 13 open closure areas;
- lifetime ledgers for useful compute service, lifecycle energy, and material flows;
- a private-draft technical review brief.

## What it does not establish

This repository is not a flight-qualified spacecraft design, verified performance claim, approved SpaceX design, or proof of orbital fleet feasibility. The 1,000-node arithmetic is linear scaling only; it does not establish manufacturing throughput, launch cadence, reliability, cost, or deployment capacity.

The terrestrial 20 GW objective is separate from orbital capacity. Any company-stated orbital deployment ambition must be sourced and dated and is not treated here as verified deployed capacity.

## Current screening picture

The model uses a candidate 700 km circular orbit with a conservative beta-zero timing case of 63.487 minutes sunlit and 35.286 minutes eclipse per 98.773-minute orbit. These are screening inputs, not a selected mission orbit.

For the 120 kW sustained and 150 kW peak-stress cases, the current power screen estimates 204.108 kW and 255.135 kW of array output during sunlight with eclipse recharge, respectively. The corresponding beta-zero screening array areas are approximately 1,224.647 m² and 1,530.808 m². Thermal screens assume compute electrical load becomes heat and use an unresolved radiator area convention.

These results depend on assumptions recorded in the model. Auxiliary load is currently a zero lower-bound placeholder. The orbit-cycle cases remain `OPEN` pending actual array bus output, battery power limits and reserve requirements, radiator rejection capability, and other engineering inputs. Lifetime service, lifecycle energy, and material recovery measurements also remain `OPEN`.

## Where the work is going

1. Obtain configuration-matched orbit, electrical, array, storage, thermal, compute, and communications inputs from responsible engineering reviewers.
2. Resolve the open orbit-cycle cases and rerun the screening calculations with traceable evidence.
3. Expand sensitivity and failure cases only where engineering inputs support them.
4. Populate the lifecycle ledgers with measured service, energy, and material-flow evidence.
5. Reassess deployment scale only after launch, manufacturing, and operational constraints have evidence.

## Technical review request

Please review the assumptions and identify the first constraints or missing evidence that would invalidate or materially change the model.

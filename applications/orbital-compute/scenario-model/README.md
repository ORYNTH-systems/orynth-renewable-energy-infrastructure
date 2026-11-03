# ORC-001 Scenario Model

Status: proposed screening model. This layer connects the orbit budget to the abundance indicators. It does not establish flight performance or validate SpaceX claims.

## Scope

Model one or more orbital-compute scenarios using traceable inputs from `../orbit-budget/` and `../abundance/`. Keep measured values, sourced claims, analyst assumptions, and unknowns distinguishable.

The terrestrial 20 GW objective is tracked separately. It is not an orbital power target. Any annual orbital deployment ambition is recorded as a separate company-stated claim, with its source and date, rather than treated as verified capacity.

## Calculation chain

For each scenario and operating period:

- Solar energy generated = net array power × sunlit operating time.
- Usable energy = generated energy × conversion efficiency, less storage and distribution losses.
- Compute service delivered = usable compute energy × achieved utilization, reported separately from peak compute power.
- Service fulfillment = delivered compute service ÷ requested compute service.
- Reserve fraction = available reserve energy ÷ required reserve energy.
- Lifecycle energy intensity = lifecycle energy consumed ÷ useful compute service delivered.
- Net material recovery = recovered mass ÷ retired mass, with unrecovered mass reported separately.

Do not combine peak power, average power, energy, and compute service into one quantity. State each unit and time basis.

## Scenario rules

1. Every input must have a value or an explicit `OPEN` status.
2. Record units, source or rationale, confidence, and whether the value is measured, sourced, or assumed.
3. Do not silently replace unknowns with zero.
4. Preserve the input set and model version for every result.
5. Compare results only when the operating period, service definition, and system boundary match.

## Current limits

This is a bookkeeping and screening specification. It does not model detailed orbital perturbations, radiation, degradation, launch cadence, component failure, manufacturing capacity, or end-of-life recovery. Those remain open until supported by engineering inputs and evidence.

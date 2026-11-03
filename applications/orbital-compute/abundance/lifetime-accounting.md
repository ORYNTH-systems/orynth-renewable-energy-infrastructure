# ORC-001 Lifetime Abundance Accounting

**Status:** Proposed measurement layer. All quantities remain `OPEN` until supported by traceable evidence.

## Purpose and boundary

Track durable useful service and the physical resources required to deliver it over a declared operating interval and lifecycle boundary. This accounting does not establish that orbital compute produces net abundance; it creates the records needed to evaluate that question.

Keep the terrestrial 20 GW objective separate from orbital capacity. Keep modeled, assumed, measured, and independently verified values distinguishable.

## Ledgers

- `lifetime-service-ledger.csv` records workload-specific requested, delivered, and validated service units.
- `lifecycle-energy-ledger.csv` records energy by lifecycle stage and source.
- `material-flow-ledger.csv` records material mass entering, reused, recovered, recycled, and unrecovered.

Each record must identify its scenario, time period or lifecycle stage, system boundary, unit, source, evidence reference, and status.

## Accounting rules

1. Do not aggregate unlike workload service units into a single total. Report each workload and unit separately.
2. Keep energy by source and lifecycle stage. Do not treat generated energy as delivered service or as lifecycle net energy.
3. Record material mass by identified material and flow. Do not count reuse and recycling twice for the same mass.
4. Keep unknown quantities blank with `OPEN`; never substitute zero for missing evidence.
5. Record whether a value is measured, sourced, assumed, or independently verified.
6. Report gross totals and exclusions alongside any derived ratio. State the denominator, period, and boundary.
7. Preserve evidence and model versions so another reviewer can reproduce each derived indicator.

## Evidence required before closure

Service records need a declared workload definition, unit, measurement method, interval, and validation source. Energy records need metered or traceable energy by source and lifecycle stage. Material records need a configuration-matched bill of materials, mass basis, and evidence of reuse, recovery, recycling, or disposal.

Until those records are supplied and reviewed, lifetime service, lifecycle energy intensity, net service capacity, and verified material recovery remain `OPEN`.

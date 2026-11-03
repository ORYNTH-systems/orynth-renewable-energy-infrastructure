# ORC-001 Abundance Measurement Contract

**Status:** Proposed data and calculation contract. All unmeasured quantities remain `OPEN`.

## Keep three quantities separate

1. **Electrical energy:** kWh or MWh at a named boundary, such as array output, spacecraft bus, compute input, or lifecycle input.
2. **Useful compute service:** workload-specific units, such as validated completed tasks under declared quality and latency criteria.
3. **Physical resources and burdens:** mass by material, water volume, fuel, and other source-specific quantities.

A kWh of compute electricity is not a unit of completed compute service.

## Canonical indicator inputs

| Indicator | Required inputs and rule |
|---|---|
| `ABN-001` Solar sufficiency | Available solar-bus kWh divided by compute demand, support demand, losses, and required storage replenishment for the same orbit phase and end-of-life case. |
| `ABN-002` Service fulfillment | Validated delivered workload units divided by validated requested workload units. The unit, quality, latency, and interval must match. |
| `ABN-003` Critical reserve coverage | Usable stored energy above the required reserve, divided by critical-load power. Report hours; do not count reserved energy as consumed energy. |
| `ABN-004` Power headroom | Available end-of-life bus capacity minus concurrent compute and support load, in kW. |
| `ABN-005` Thermal headroom | Verified radiator rejection minus total modeled heat load, in kW thermal. Requires test-correlated environmental and surface-aging data. |
| `ABN-006` Communications headroom | Available sustained link throughput minus workload traffic, in Gbit/s. |
| `ABN-007` Curtailed solar energy | Available solar energy not captured or used, in kWh, for the declared interval and configuration. |
| `ABN-008` Unmet service | Requested validated workload units that were not delivered; report by delayed, rejected, or failed status. |
| `ABN-009` Lifecycle energy intensity | Manufacturing, allocated launch, ground-support, and operational energy divided by validated useful workload units. Keep source-specific inputs visible and state the conversion and allocation method. |
| `ABN-010` Material recovery fraction | Requalified reused mass plus verified recycled mass divided by retired recoverable material mass. Keep reuse and recycling separate in the source records. |
| `ABN-011` Unrecovered material | Retired material without verified reuse or recovery, by material and in kg. |
| `ABN-012` Terrestrial burden transfer | Report grid energy, water, fuel, and attributable manufacturing and launch burdens by source. Do not infer this from onboard solar operation. |
| `ABN-013` Net service capacity added | Validated new service capacity minus capacity lost to degradation, outages, and retirement, in the declared workload unit per interval. |
| `ABN-014` Abundance claim scope | State boundary, time horizon, population served, evidence classes, and unresolved limitations for each claim. |

## Evidence and status rules

- Every input records its unit, system boundary, period or cohort, source, evidence class, confidence, and status.
- Use `MEASURED`, `QUALIFIED`, `MODELED`, `ASSUMPTION`, or `OPEN` according to the evidence actually available.
- Ratios require matching boundaries and periods. Do not silently substitute zero for an `OPEN` input.
- A result derived from assumptions remains modeled or screening-only.
- Keep terrestrial objectives separate from orbital capacity and deployment claims.

## Current evaluator mapping to correct

The current `requested_compute_service` and `useful_compute_service_delivered` fields are labeled in kWh compute. They represent electrical energy quantities, not the workload-specific units required for `ABN-002` or `ABN-009`. Do not use them to report service fulfillment or lifecycle energy per useful service until the scenario schema and evaluator are revised.

## Evaluator outputs

The evaluator labels ratios based on electrical energy or gross hardware mass as screening proxies. It separately emits `ABN-001` through `ABN-014` as `OPEN` until the contract’s required workload, lifecycle, resource, or qualified engineering evidence is available.

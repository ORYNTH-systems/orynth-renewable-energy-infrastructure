# ORC-001 Engineering Validation Package

**Status:** Proposed review package; not engineering-approved.
**Purpose:** Identify the evidence needed to replace screening assumptions and close the ORC-001 engineering register. This package does not claim flight readiness.

## Review rule

For each evidence item, record its owner, source, date, configuration or hardware revision, units, operating conditions, uncertainty, and review disposition. A value may move from `OPEN` only when its evidence is traceable to the applicable configuration and has been reviewed by the responsible engineering discipline.

Keep the terrestrial 20 GW objective separate from orbital capacity. Fleet node counts remain linear arithmetic and do not establish launch, manufacturing, or operational feasibility.

## Evidence request matrix

| Closure area | Review discipline | Evidence needed to close |
|---|---|---|
| ORC-CL-001 Orbit | Mission / orbital engineering | Selected orbit definition; epoch and reference frame; inclination, altitude or orbital elements; perturbation and station-keeping assumptions; eclipse and sunlit timelines across relevant seasons; source model and version. |
| ORC-CL-002 Orbit environment | Mission / orbital engineering | Beta-angle range and eclipse geometry; attitude and pointing constraints; radiation environment and mission duration; debris and conjunction assumptions; environmental data source and uncertainty. |
| ORC-CL-003 Electrical load | Electrical / payload engineering | Configuration-controlled load ledger for compute, conversion, storage, communications, thermal control, avionics, and attitude control; nominal, peak, startup, fault, and duty-cycle profiles; measured or qualified basis. |
| ORC-CL-004 Solar array | Power / solar-array engineering | Array configuration and deployed area; beginning- and end-of-life output by orbit and attitude; cell and conversion efficiency; temperature, radiation, shadowing, wiring, and degradation effects; qualification or test evidence. |
| ORC-CL-005 Energy storage | Power / battery engineering | Cell and pack capacity; charge/discharge limits and efficiency across temperature and age; allowable depth of discharge; reserve policy; eclipse-cycle life; protection and fault response; qualification evidence. |
| ORC-CL-006 Thermal environment | Thermal / mission engineering | Solar, albedo, and planetary infrared inputs; orbit and attitude time histories; view factors; transient cases; surface optical properties and their end-of-life bounds; model correlation evidence. |
| ORC-CL-007 Radiator | Thermal engineering | Rejection capability versus temperature and view factor; emissivity and absorptivity; radiator area convention and emitting faces; deployment geometry; environmental and degradation derates; thermal-vacuum correlation. |
| ORC-CL-008 Thermal transport | Thermal / mechanical engineering | Processor-to-radiator heat path; interface and transport resistances; pump or heat-pipe performance and power; fluid limits; redundancy, leak isolation, fault detection, and verified component temperature limits. |
| ORC-CL-009 Compute service | Compute / workload engineering | Declared workload and service unit; sustained and peak power profiles; performance and utilization measurements; throttling behavior; service quality and availability criteria; reproducible workload evidence. |
| ORC-CL-010 Communications | Communications engineering | Link budget by geometry and operating mode; antenna, bandwidth, modulation, coding, and power assumptions; contact windows; throughput and latency evidence; interference and link-loss response. |
| ORC-CL-011 Lifecycle resources | Manufacturing / lifecycle engineering | Bill of materials by material and mass; manufacturing and launch energy boundary; expected replacement rate; repair, reuse, recycling, and disposal pathways; measured recovery yields and chain-of-custody evidence. |
| ORC-CL-012 Deployment capacity | Launch / manufacturing engineering | Launch mass and volume per node; integration and production rate; launch cadence and capacity basis; deployment and commissioning sequence; replenishment and failure replacement assumptions; evidence for each scale-up constraint. |
| ORC-CL-013 Target boundary | Program / systems engineering | Approved statement separating the terrestrial 20 GW objective, any cited orbital deployment ambition, modeled node capacity, and verified operating capacity; source and date for external claims; units and time basis. |

## Required review record

For every submitted item, add a record to the engineering closure register with:

- closure ID and affected model inputs;
- evidence title, owner, source, revision, and date;
- hardware or model configuration and operating conditions;
- measured, sourced, or assumed classification;
- units, uncertainty, and limitations;
- reviewer and disposition;
- resulting input change, if any, and the model run that incorporates it.

## Closure criteria

A closure item can be marked `CLOSED` only when the evidence is traceable, configuration-matched, dimensionally consistent, reviewed by the responsible discipline, and sufficient to reproduce or independently check the model input. Conflicting, incomplete, or nonrepresentative evidence remains `OPEN` with the missing element recorded.

Until review closes the relevant items, orbit-cycle outputs, sensitivity results, power and thermal budgets, and fleet scaling remain screening outputs. They do not establish validated flight performance or fleet feasibility.

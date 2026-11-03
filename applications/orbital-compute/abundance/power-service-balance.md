# Power and Useful-Service Balance

**Status:** PROPOSED — definitions for the ORC-001 abundance measurement layer

## 1. Report units and boundary

Power is an instantaneous rate in W, kW, or GW. Energy is accumulated over time in Wh, kWh, or MWh. Compute service is workload-specific and must be reported in a separately declared unit (for example, completed inference requests at a stated quality and latency, or validated training operations). Do not treat electrical energy consumed as equivalent to useful service delivered.

Report these system boundaries separately:

1. array output;
2. regulated spacecraft power bus;
3. compute payload input;
4. completed and delivered compute service;
5. full lifecycle including terrestrial manufacture, launch, servicing, replacement, and retirement.

## 2. Energy accounting

For each interval, record:

- `E_solar_bus`: solar energy delivered to the spacecraft power bus;
- `E_compute`: electrical energy supplied to compute hardware;
- `E_support`: energy supplied to thermal control, communications, avionics, attitude control, and other spacecraft services;
- `E_losses`: conversion, distribution, battery, and other measured losses;
- `E_export`: energy or work product transferred across the declared boundary, if measurable;
- `delta_E_storage`: change in stored electrical energy from start to end of interval;
- `E_curtailed_available`: solar energy that could have been captured or used but was not, reported separately from energy actually generated.

For a closed interval whose storage state is measured:

`E_solar_bus = E_compute + E_support + E_losses + E_export + delta_E_storage`

Use one boundary consistently. Do not count battery charge and later battery discharge as two separate sources of energy. Account for battery losses in `E_losses`; report state-of-charge and usable reserve separately.

## 3. Proposed abundance indicators

### Solar sufficiency

`solar_sufficiency_ratio = available_solar_bus_energy / (planned_compute_energy + support_energy + conversion_and_storage_losses + required_storage_replenishment)`

Report by orbit phase and end-of-life case, not only as an annual average. A ratio below 1 means the stated workload cannot be met under that case without shedding load or using a different source. A ratio above 1 indicates an energy margin only at the stated boundary; it does not prove economic or lifecycle abundance.

### Service fulfillment

`service_fulfillment = validated_compute_service_delivered / validated_compute_service_requested`

Declare the workload, quality threshold, latency, link availability, and accounting period. Report completed, delayed, rejected, and failed service separately.

### Reserve coverage

`reserve_coverage_hours = usable_stored_energy_for_critical_loads / critical_load_power`

Also report the worst-case eclipse, fault, and recovery reserve in kWh and hours. Reserve energy is capacity held for resilience; do not label it as consumed energy.

### Capacity headroom

Report spare array output, bus capacity, battery charge/discharge power, thermal rejection, and communications throughput at the same operating point. The smallest available headroom may constrain additional workload even when sunlight is available.

### Useful service per lifecycle input

Report useful compute service against operational energy and lifecycle energy separately. Include manufacturing, launch, replacement, and recovery where evidence exists. Do not omit lifecycle inputs because their costs are not represented in a dollar figure.

## 4. Interpreting surplus

Surplus is not just unused electricity. Report:

- additional validated compute service that can be delivered with current headroom;
- stored energy available above the declared critical reserve;
- available power and thermal capacity for expansion;
- solar energy curtailed while service demand is unmet;
- service demand unmet because power, thermal, link, authority, or hardware capacity is insufficient.

This distinguishes an energy surplus from a compute, cooling, storage, or communications bottleneck.

## 5. Evidence classes

Every value must be labeled as measured, modeled, supplier-stated, company-claimed, analyst-assumed, or unknown. A ratio calculated from assumptions remains modeled. A design target is not an observed result. A recovery plan is not a recovery result.

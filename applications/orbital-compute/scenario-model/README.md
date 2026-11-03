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

## Power-budget screening calculator

`screen-power-budget.ps1` reads the scenario inputs and writes `power-screening-results.csv`.

For each load case it calculates:

- Eclipse bus energy: `(compute load + auxiliary load) × eclipse hours`.
- Nominal battery energy: `eclipse bus energy ÷ (discharge efficiency × depth of discharge)`.
- Required array output during sunlight with eclipse recharge:  
  `(compute load + auxiliary load) ÷ bus efficiency × [1 + (eclipse hours ÷ sunlight hours) ÷ (charge efficiency × discharge efficiency)]`.
- Screening array area: `required array output × reserve factor ÷ (array output density × EOL output factor)`. The script converts kW to W before calculating area.

### Current screening outputs

| Load case | Eclipse bus energy | Nominal battery energy | Array output during sunlight | Area, no regular eclipse | Area, beta-zero eclipse |
|---|---:|---:|---:|---:|---:|
| 120 kW sustained | 70.572 kWh | 92.858 kWh | 204.108 kW | 757.895 m² | 1,224.647 m² |
| 150 kW peak stress | 88.215 kWh | 116.072 kWh | 255.135 kW | 947.368 m² | 1,530.808 m² |

All results are `SCREENING_ONLY`. The 150 kW case holds peak load through eclipse and recharge; it is a stress case, not a workload prediction. Auxiliary load is set to zero as a lower-bound placeholder. The array-density life point and area convention remain unresolved, including possible double-counting with the EOL factor. These calculations do not establish flight performance or lifecycle abundance. The terrestrial 20 GW objective remains separate from orbital capacity.

## Thermal-budget screening calculator

`screen-thermal-budget.ps1` reads the scenario inputs and writes `thermal-screening-results.csv`.

The compute-only heat load is calculated as:

`Q = compute electrical power × compute-load-to-heat fraction`

Nominal emitting area is `Q ÷ radiator reference flux`. For the per-emitting-face interpretation, the equal-face physical panel footprint is emitting area divided by two. If the quoted flux is already per physical panel footprint, the footprint is not halved.

The stress case applies the provisional performance factor and reserve:

`stress emitting area = [Q ÷ (reference flux × performance factor)] × reserve factor`

### Current screening outputs

| Load case | Nominal emitting area | Nominal footprint, equal two-face | Stress emitting area | Stress footprint, equal two-face | Stress footprint, flux per physical panel area |
|---|---:|---:|---:|---:|---:|
| 120 kW sustained | 85.714 m² | 42.857 m² | 128.571 m² | 64.286 m² | 128.571 m² |
| 150 kW peak | 107.143 m² | 53.571 m² | 160.714 m² | 80.357 m² | 160.714 m² |

All outputs are `SCREENING_ONLY`. These are compute-only heat loads. Auxiliary heat, absorbed solar and Earth flux, operating temperature, emissivity, absorptivity, radiator view factors, and thermal transport losses remain open. The radiator flux area convention is unresolved, and the 20% derate and 20% reserve are analyst assumptions. The results do not establish a flight design.

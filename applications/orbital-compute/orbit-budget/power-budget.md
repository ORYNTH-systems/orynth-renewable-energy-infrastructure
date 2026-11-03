# ORC-001 Power Budget — Candidate A

**Status:** SCREENING MODEL  
**Orbit candidate:** 700 km circular dawn–dusk sun-synchronous  
**Compute cases:** 120 kW sustained / 150 kW peak, taken as company-stated comparison inputs

## 1. Orbit timing

Use standard Earth two-body constants for a first screen:

- mean Earth radius `R = 6,378.137 km`;
- Earth gravitational parameter `μ = 398,600.4418 km³/s²`;
- circular altitude `h = 700 km`;
- orbital radius `r = R + h = 7,078.137 km`.

Orbital period:

`T = 2π √(r³ / μ) = 98.773 min` (approximately 98.8 min).

For the ideal cylindrical Earth shadow, eclipse duration as a function of Sun beta angle `β` is screened by:

`k = √(1 − (R/r)²) / cos(β)`

`t_eclipse = (T/π) arccos(k)` when `k < 1`; otherwise the ideal cylindrical model predicts no eclipse. This omits penumbra, oblateness, attitude constraints, and date-specific orbit perturbations.

At `β = 0°`, `t_eclipse = 35.286 min`; sunlight is `63.487 min`. At ideal dawn–dusk `β` near `90°`, the simple model gives no ordinary Earth-shadow eclipse. The no-eclipse result is a geometry case, not a finding that an actual orbit has zero eclipse all year.

## 2. Screening inputs

| Input | Value | Basis |
|---|---:|---|
| Sustained compute load | 120 kW | SpaceX draft reference case |
| Peak compute load | 150 kW | SpaceX draft reference case |
| Auxiliary spacecraft load | 0 kW in numeric example | Deliberate lower-bound placeholder; actual value OPEN |
| Array output density | 250 W/m² | SpaceX draft assumption; life-point and area convention OPEN |
| Distribution efficiency, ηbus | 0.95 | Analyst screening assumption |
| Battery charge efficiency, ηch | 0.95 | Analyst screening assumption |
| Battery discharge efficiency, ηdis | 0.95 | Analyst screening assumption |
| Battery depth of discharge | 0.80 | Analyst screening assumption |
| Array end-of-life output factor | 0.80 | Analyst stress assumption; replace with qualified degradation model |
| Array design reserve factor | 1.20 | Analyst screening assumption |

The numeric examples set auxiliary load to zero, so they are lower bounds. Replace every analyst input before design release.

## 3. Near-continuous sunlight case

With no regular eclipse recharge requirement, the solar array must serve the compute bus and auxiliaries continuously:

`P_array_required = (P_compute + P_aux) / ηbus`

`A_array = P_array_required × reserve / (array_density × EOL_factor)`

For `P_aux = 0`:

| Load case | Bus load | Required array output before reserve/EOL | Screening area after ηbus, 20% reserve, and 20% EOL derate |
|---|---:|---:|---:|
| Sustained | 120 kW | 126.3 kW | **758 m²** |
| Peak | 150 kW | 157.9 kW | **947 m²** |

These areas do not establish that 250 W/m² is achieved at end of life or throughout attitude/temperature conditions. If the SpaceX density already includes an end-of-life value, remove the separate 0.80 factor to avoid double-counting degradation.

## 4. Eclipse stress case at β = 0°

At 700 km, the beta-zero screen gives 35.286 minutes eclipsed and 63.487 minutes sunlit each 98.773-minute orbit.

For continuous load during eclipse:

`E_eclipse,bus = (P_compute + P_aux) × t_eclipse / 60`

`E_battery,nominal = E_eclipse,bus / (ηdis × depth_of_discharge)`

The array must supply the sunlit compute load and replenish energy consumed during eclipse:

`P_array,base = (P_compute + P_aux)/ηbus × [1 + (t_eclipse/t_sunlit)/(ηch × ηdis)]`

`A_array = P_array,base × reserve / (array_density × EOL_factor)`

For `P_aux = 0`:

| Constant load through eclipse and recharge interval | Eclipse energy delivered to bus | Nominal battery energy at 80% DoD / 95% discharge efficiency | Array output required during sunlight before reserve/EOL | Screening array area after 20% reserve and 20% EOL derate |
|---|---:|---:|---:|---:|
| 120 kW | 70.6 kWh | **92.9 kWh** | 204.1 kW | **1,225 m²** |
| 150 kW | 88.2 kWh | **116.1 kWh** | 255.1 kW | **1,531 m²** |

The 150 kW case assumes peak load continues through the eclipse and the following recharge period. It is a stress case, not a workload prediction. Battery discharge electronics must also support at least the eclipse bus load plus auxiliaries.

## 5. Findings and next closure data

The orbit choice materially changes the energy system. An ideal dawn–dusk orbit removes routine eclipse recharge in the first-order geometry and cuts the zero-auxiliary screening array area from roughly 1,225–1,531 m² to 758–947 m². This is why orbit beta angle and annual eclipse analysis must be resolved before treating array area as a fixed value.

To close this budget, provide or select: epoch and full orbit elements; date-propagated beta angle and eclipse seasons; workload power trace; every auxiliary load and duty cycle; array I–V output versus temperature and pointing; qualified EOL degradation; power conversion topology; battery cell limits and thermal state; charge window; fault reserve; and allowable throttle/shed sequence.

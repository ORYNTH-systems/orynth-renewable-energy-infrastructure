# ORC-001 Thermal Budget — Candidate A

**Status:** SCREENING MODEL  
**Orbit candidate:** 700 km circular dawn–dusk sun-synchronous  
**Compute cases:** 120 kW sustained / 150 kW peak, company-stated comparison inputs

## 1. Governing balance

In orbit, the external spacecraft thermal balance is evaluated through radiation, not convection. NASA expresses the balance as:

`absorbed solar + absorbed albedo + absorbed planet IR + internally generated heat = stored heat + radiated heat`

For sustained operation, the average stored-heat term approaches zero; the radiator must reject internal heat plus absorbed environmental heat. Heat transport from chips to the external radiator may use conduction, heat pipes, or pumped liquid loops; the final spacecraft-to-space heat rejection is radiative.

## 2. First-pass heat loads

The AI1 public reference case provides compute-power values but does not provide a full spacecraft heat-load ledger. For a conservative screen, treat the 120 kW sustained and 150 kW peak compute electrical loads as equal thermal loads. This approximates the compute payload's eventual waste heat but excludes:

- power conversion and distribution losses;
- pumps, avionics, communications, attitude control, and storage losses;
- heat absorbed from direct sunlight, Earth-reflected sunlight, and Earth infrared;
- transient thermal storage, peak duration, radiator warm-up, and control margin.

Thus, 120 kW and 150 kW are compute-only screen points, not closed total spacecraft heat loads.

## 3. Radiator-area conventions

SpaceX's draft transcript gives approximately 1,400 W/m² for radiators and says the radiators are double-sided. Until the area convention is confirmed, keep both interpretations:

- If 1,400 W/m² is **per emitting face**, the total emitting surface for heat `Q` is `Q / 1,400`. For a panel with two equally effective emitting faces, the physical panel footprint is half that emitting-surface area.
- If 1,400 W/m² is already **per physical double-sided panel footprint**, do not halve the area.

### Compute-only nominal screen

| Heat to reject | Total emitting area at 1,400 W/m² per face | Double-sided physical panel area under equal-face assumption |
|---|---:|---:|
| 120 kW | 85.7 m² | **42.9 m²** |
| 150 kW | 107.1 m² | **53.6 m²** |

### Stress screen with provisional factors

For a sizing sensitivity only, apply a 20% radiator-performance derate and a 20% design reserve. Effective assumed rejection is then `1,400 × 0.80 = 1,120 W/m² per emitting face` and area is multiplied by `1.20`.

| Heat to reject | Total emitting area at derated flux with reserve | Double-sided physical panel area under equal-face assumption |
|---|---:|---:|
| 120 kW | 128.6 m² | **64.3 m²** |
| 150 kW | 160.7 m² | **80.4 m²** |

The 20% derate and 20% reserve are analyst-selected screening inputs, not SpaceX or NASA requirements. Additional auxiliary and environmental loads increase the required radiator capacity. If SpaceX's 1,400 W/m² is defined per physical footprint, the corresponding physical areas are twice the double-sided figures above.

## 4. Orientation and radiator environment

Candidate A follows the company-described orientation concept: solar collection surfaces face the Sun while radiator surfaces maintain an unobstructed view toward cold space. “Knife-edge to the Sun” reduces direct solar interception but does not by itself close the thermal case. The model must include both radiator-face view factors to Earth, reflected solar flux, Earth infrared flux, orientation slew limits, mutual heating from nearby spacecraft or structures, and surface optical-property change over mission life.

The radiator's effective emission depends on its temperature, infrared emissivity, solar absorptivity, exposed area, view factors, and environmental heat sink. Until operating temperature and surface properties are declared, the 1,400 W/m² value is only an assumed design point; it cannot be independently reconstructed from the Stefan–Boltzmann relation.

## 5. Thermal transport and protection

The node needs an explicit path from processor hot spots to radiators: chip/package interface → cold plate or equivalent → loop/pump/heat pipe → radiator root → emitting surface. The design must identify loop redundancy, pump power, leak isolation, fluid freeze/boil limits, flexible-joint losses, micrometeoroid protection, and radiator deployment failure response.

The effect gate must throttle or stop compute before any component exceeds its verified temperature envelope. Loss of a pump, flow sensor, temperature sensor, radiator deployment state, or current thermal model must block new high-power workload attempts.

## 6. Required closure data

Resolve the radiator area convention; processor and memory thermal maps; auxiliary load heat; peak duration; operating temperature; emissivity/absorptivity at beginning and end of life; solar/albedo/planet-IR inputs; Earth and space view factors; radiator orientation throughout the orbit; coolant and pump design; thermal capacitance; control response; and thermal-vacuum test correlation criteria.

# Orbital Solar Compute — Technical Review Brief

**Status:** Private discussion draft  
**Evidence level:** Preliminary screening calculations; not a validated spacecraft design  
**Purpose:** Request technical review of the assumptions and identify the first constraints that could invalidate or materially change the model.

## Concept

This work organizes an initial engineering screen for an orbital solar-powered compute node. It links candidate orbit timing, electrical generation and storage, compute load, thermal rejection, and lifecycle accounting. The model separates documented inputs, analyst-selected sensitivities, and unresolved items.

The terrestrial **20 GW objective is tracked separately**. It is not an orbital deployment target. Any company-stated orbital deployment ambition must be cited with its source and date and must not be presented as verified deployed capacity.

## Current screening case

The reference case uses a candidate 700 km circular orbit and a conservative beta-zero eclipse timing screen: 63.487 minutes sunlit and 35.286 minutes eclipse per 98.773-minute orbit. These are screening inputs, not a selected flight orbit or a mission-qualified orbit analysis.

| Load case | Eclipse energy at bus | Nominal battery energy | Array output during sunlight with eclipse recharge | Array area for beta-zero eclipse case |
|---|---:|---:|---:|---:|
| 120 kW sustained | 70.572 kWh | 92.858 kWh | 204.108 kW | 1,224.647 m² |
| 150 kW peak-stress | 88.215 kWh | 116.072 kWh | 255.135 kW | 1,530.808 m² |

Power figures use screening assumptions recorded in the model, including 95% bus distribution efficiency, 95% battery charge and discharge efficiency, 80% depth of discharge, 80% end-of-life array output factor, 1.20 array reserve factor, and 250 W/m² array output density. Auxiliary load is currently a zero lower-bound placeholder; actual auxiliary demand remains open.

The thermal screen treats compute electrical load as equal to compute heat. At the documented 1,400 W/m² radiator screening value, with a provisional 20% derate and 20% reserve, the equal-two-face physical panel footprints are approximately 64.3 m² for 120 kW and 80.4 m² for 150 kW. The radiator flux area convention, environmental heat loads, and auxiliary thermal loads remain unresolved.

These figures are sizing screens. The coupled orbit-cycle model correctly remains `OPEN` until array bus output, battery power limits and initial state of charge, reserve requirement, and available radiator rejection are supplied.

## Scale and lifecycle limits

The 1,000-node illustration is linear arithmetic: 1,000 nodes at 120 kW each total 0.12 GW of nominal compute load. It does not establish launch cadence, manufacturing throughput, fleet reliability, orbital coordination, or economic feasibility.

Lifetime useful service, lifecycle energy by source, and material reuse or recovery are not yet quantified. Their ledgers are present, but the measurements remain `OPEN`.

## Request

**Please technically review the assumptions and identify the first constraints or missing evidence that would invalidate or materially change this model.**

## Thermal feasibility challenge

A material counterhypothesis is that orbital heat rejection could be a limiting constraint. Vacuum removes convection and reduces gas conduction, but it does not block thermal radiation. The spacecraft must transport compute heat to radiators that can reject it under actual temperature, emissivity, orientation, view-factor, and absorbed-heat conditions. NASA's thermal-control overview describes these balance terms: https://www.nasa.gov/smallsat-institute/sst-soa/thermal-control/

The radiator flux basis is unresolved. The current thermal screen uses 1,400 W/m², traced in the thermal budget to a prior draft transcript, with the emitting-face versus physical-panel area convention still open. A separate post states 1,300 W/m²: https://x.com/elonmusk/status/2117462581371719779. Its conditions and area convention have not been established. The sensitivity sweep now includes 1,300 W/m² as a distinct level alongside 1,200, 1,400, and 1,600 W/m². The 1,300 W/m² level reflects the cited post; its conditions and area convention remain unverified.

Accordingly, this brief does not assume that cooling is easier in space and does not claim that orbital compute is thermally feasible. The radiator model still needs temperature- and emissivity-based rejection, orbit-dependent Earth and solar inputs, area convention, mass, and thermal-transport evidence. The broader claim that such systems will never be built is outside what this screening package can determine.


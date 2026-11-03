# Orbital Solar Compute — Technical Review Brief

**Status:** Public technical review draft
**Evidence level:** Preliminary screening calculations; not a validated spacecraft design  
**Purpose:** Request technical review of the assumptions and identify the first constraints that could invalidate or materially change the model.

## Concept

This work organizes an initial engineering screen for an orbital solar-powered compute node. It links candidate orbit timing, electrical generation and storage, compute load, thermal rejection, and lifecycle accounting. The model separates documented inputs, analyst-selected sensitivities, and unresolved items.

The terrestrial **20 GW objective is tracked separately**. It is not an orbital deployment target. Any company-stated orbital deployment ambition must be cited with its source and date and must not be presented as verified deployed capacity.

## Current screening case

The reference case uses a candidate 700 km circular orbit and a conservative beta-zero eclipse timing screen: 63.487 minutes sunlit and 35.286 minutes eclipse per 98.773-minute orbit. These are screening inputs, not a selected flight orbit or a mission-qualified orbit analysis.

| Load case | Eclipse energy at bus | Nominal battery energy | Array output during sunlight with eclipse recharge | Array area for beta-zero eclipse case |
|---|---:|---:|---:|---:|
| 120 kW sustained | about 70.6 kWh | about 92.9 kWh | about 204.1 kW | about 1,225 m² |
| 150 kW peak-stress | about 88.2 kWh | about 116.1 kWh | about 255.1 kW | about 1,531 m² |

Power figures use screening assumptions recorded in the model, including 95% bus distribution efficiency, 95% battery charge and discharge efficiency, 80% depth of discharge, 80% end-of-life array output factor, 1.20 array reserve factor, and 250 W/m² array output density. Auxiliary load is currently a zero lower-bound placeholder; actual auxiliary demand remains open.

The thermal screen treats compute electrical load as equal to compute heat. At 1,400 W/m² with a provisional 20% derate and 20% reserve, the equal-two-face physical panel footprints are about 64.3 m² for 120 kW and 80.4 m² for 150 kW. If flux is already defined per physical panel footprint, those areas double. A separate 1,300 W/m² sensitivity level gives about 69.2 m² and 86.5 m² under the same illustrative factors and equal-two-face assumption. These remain screening calculations; environmental and auxiliary heat, operating temperature, emissivity, and view factors remain open.

These figures are sizing screens. The coupled orbit-cycle model correctly remains `OPEN` until array bus output, battery power limits and initial state of charge, reserve requirement, and available radiator rejection are supplied.

## Scale and lifecycle limits

The 1,000-node illustration is linear arithmetic: 1,000 nodes at 120 kW each total 0.12 GW of nominal compute load. It does not establish launch cadence, manufacturing throughput, fleet reliability, orbital coordination, or economic feasibility.

Lifetime useful service, lifecycle energy by source, and material reuse or recovery are not yet quantified. Their ledgers are present, but the measurements remain `OPEN`.

## Request

**Please technically review the assumptions and identify the first constraints or missing evidence that would invalidate or materially change this model.**

## Thermal feasibility challenge

A material counterhypothesis is that orbital heat rejection could be a limiting constraint. Vacuum removes convection and reduces gas conduction, but it does not block thermal radiation. The spacecraft must transport compute heat to radiators that can reject it under actual temperature, emissivity, orientation, view-factor, and absorbed-heat conditions. NASA's thermal-control overview describes these balance terms: https://www.nasa.gov/smallsat-institute/sst-soa/thermal-control/

The 1,300 W/m² figure is attributed to this public Elon Musk post: https://x.com/elonmusk/status/2117462581371719779. It is tracked as a public estimate, not as a formal SpaceX engineering specification or independently verified performance. The separate 1,400 W/m² figure is from SpaceX's SEC-filed June 2026 interview transcript: https://www.sec.gov/Archives/edgar/data/1181412/000162828026041761/fwp_cfointerview.htm. Its per-emitting-face versus per-panel-footprint convention remains unresolved. The sensitivity sweep includes separate 1,200, 1,300, 1,400, and 1,600 W/m² levels; the additional levels are analyst-selected sensitivities, not validated performance.

Accordingly, this brief does not assume that cooling is easier in space and does not claim that orbital compute is thermally feasible. The radiator model still needs temperature- and emissivity-based rejection, orbit-dependent Earth and solar inputs, area convention, mass, and thermal-transport evidence. The broader claim that such systems will never be built is outside what this screening package can determine.


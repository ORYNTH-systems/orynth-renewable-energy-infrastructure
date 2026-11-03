# ORC-001 Orbit-Specific Budget — Candidate A

**Status:** SCREENING MODEL — assumptions exposed; not mission design or flight verification  
**Version:** 0.1.0  
**Candidate:** 700 km circular dawn–dusk sun-synchronous orbit

## Why this candidate

SpaceX's SEC-filed orbital-compute description identifies dawn–dusk sun-synchronous operation as its intended way to obtain near-constant solar exposure, and says arrays and radiator surfaces would be oriented to the Sun and deep space respectively. Its FCC-filed constellation application covers 500–2,000 km shells and includes sun-synchronous inclinations. Candidate A uses 700 km as a midpoint screening case, not as a confirmed orbit or ORYNTH selection.

## What this budget establishes

- At 700 km circular altitude, the two-body orbital period is approximately **98.8 minutes**.
- An ideal dawn–dusk geometry has **near-continuous sunlight** and can avoid the ordinary Earth-shadow eclipse. Actual year-round eclipse duration requires the selected orbit elements and date-propagated beta angle.
- A conservative cylindrical-shadow, beta-angle-zero screen gives about **35.3 minutes of eclipse** and **63.5 minutes of sunlight** per orbit.
- With the public 120 kW average / 150 kW peak compute case, and deliberately zero auxiliary load, the screening solar-array area is about **758–947 m²** for the idealized no-eclipse case and **1,225–1,531 m²** for the beta-zero eclipse case. These figures include the stated screening factors and are not build-ready dimensions.
- The radiator calculation depends on whether SpaceX's stated 1,400 W/m² is per emitting face or per double-sided panel footprint. The record must keep both conventions open until the source's drawing or engineering definition resolves it.

## Files

- `power-budget.md` — orbit timing, battery, solar-array sizing, and energy closure.
- `thermal-budget.md` — heat balance, radiator area conventions, and temperature-dependent unknowns.
- `inputs.csv` — source values, analyst assumptions, derived outputs, and closure state.

## Decision boundary

The 20 GW SpaceX statement concerns terrestrial power and cooling projects. It is not an input to this orbital node budget. SpaceX's separate orbital ambition is expressed as an annual deployment rate; it is not an installed capacity for ORC-001.

## Sources

- SpaceX's SEC-filed AI1 interview transcript gives the draft 150 kW peak power level, 120 kW average compute case, and the 250 W/m² array / 1,400 W/m² radiator assumptions: [SEC transcript](https://www.sec.gov/Archives/edgar/data/1181412/000162828026041761/fwp_cfointerview.htm).
- SpaceX's SEC-filed prospectus describes dawn–dusk sun-synchronous operation, array/radiator orientation, and the unresolved scale assumptions: [SEC filing](https://www.sec.gov/Archives/edgar/data/1181412/000162828026041365/eu_interviewtranscript06.htm).
- The FCC notice summarizing SpaceX's proposed orbital system gives the filed 500–2,000 km altitude range and sun-synchronous orbit option: [FCC notice](https://docs.fcc.gov/public/attachments/DA-26-113A1.pdf).
- NASA's Small Spacecraft Systems Virtual Institute documents the orbital thermal balance, radiative heat rejection, view factors, absorptivity/emissivity, and end-of-life surface degradation: [NASA thermal control chapter](https://www.nasa.gov/smallsat-institute/sst-soa/thermal-control/).

## Status rule

This is a first-pass analytical closure, not an empirical pass. The orbit's annual beta-angle profile, actual workload traces, auxiliary loads, solar-cell life-point, battery design, radiator temperatures and optical properties, and hardware test correlation remain open.

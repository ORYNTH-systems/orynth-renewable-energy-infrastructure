# ORC-001 Abundance Measurement Layer

**Status:** PROPOSED — measurement framework; no system-level abundance claim established  
**Version:** 0.1.0  
**Parent:** EMAH / AHME orbital-compute application

## Purpose

This layer evaluates whether orbital solar compute expands durable access to useful energy and compute service while disclosing the material and environmental flows needed to provide it. It records physical quantities and service outcomes. It contains no monetary valuation.

“Abundance” is treated as an engineering objective to measure: adequate renewable supply, reliable useful service, reserve capacity, and credible recovery over the system life. It is not inferred from solar availability alone.

## Measurement boundary

Track the system from manufacture and launch through operation, replacement, recovery, and end of life. The boundary includes:

- solar energy available, captured, converted, stored, used, lost, exported, or curtailed;
- compute service requested and actually delivered;
- auxiliary power, heat rejection, communications, fault response, and reserve state;
- materials, embodied energy, launch mass, manufacturing, ground support, maintenance, and replacement;
- components and materials reused, repaired, requalified, recycled, or left unrecovered;
- burdens shifted to terrestrial grids, water, land, mining, fuel, manufacturing, launch, and orbital environment.

Operating on onboard solar power does not by itself close the manufacturing, launch, servicing, or end-of-life boundary.

## Core files

- `power-service-balance.md` — non-overlapping energy accounting and service measures.
- `lifecycle-resource-register.csv` — material, energy, launch, and recovery records.
- `indicators.csv` — proposed quantitative indicators, units, and closure state.

## Decision rule

Report abundance only at a stated system boundary and time horizon, supported by measured or explicitly modeled inputs. Keep measured performance, modeled performance, and company ambition in separate evidence classes. Unknown values remain OPEN; they are not treated as zero burden or successful recovery.

# EMAH / AHME AUTH Proof Method Plan

Status: **EMAH-PROOF-AUTH-01 / METHODS ASSIGNED — NOT EXECUTED**

Method assignment does not discharge a proof obligation.

| Proof Obligation | Proposition | Assigned Method | Scope | Proof Status |
| --- | --- | --- | --- | --- |
| EMAH-PO-AUTH-001 | Capability != Authority | Constructive separation witness / countermodel | Frozen EMAH v0.1.0 architecture | OPEN |
| EMAH-PO-AUTH-002 | Authority != Admissibility | Constructive separation witness / countermodel | Frozen EMAH v0.1.0 architecture | OPEN |
| EMAH-PO-AUTH-003 | Prior Authority != Current Execution Authority | Temporal separation witness / countermodel | Frozen EMAH v0.1.0 architecture | OPEN |
| EMAH-PO-AUTH-004 | Prior Authorization != Present Execution Eligibility | Temporal/current-state separation witness | Frozen EMAH v0.1.0 architecture | OPEN |
| EMAH-PO-AUTH-005 | Credential Possession != Authority | Constructive separation witness / countermodel | Frozen EMAH v0.1.0 architecture | OPEN |
| EMAH-PO-AUTH-006 | Physical Availability != Authority | Cross-dimensional separation witness | Frozen EMAH v0.1.0 architecture | OPEN |
| EMAH-PO-AUTH-007 | Evidence != Authority | Constructive separation witness / type-boundary proof | Frozen EMAH v0.1.0 architecture | OPEN |
| EMAH-PO-AUTH-008 | Obligation != Authority | Constructive separation witness / type-boundary proof | Frozen EMAH v0.1.0 architecture | OPEN |

## Witness Requirements

### EMAH-PO-AUTH-001

Capability present while authority is absent, unresolved, invalid, expired, revoked, or scope-mismatched

### EMAH-PO-AUTH-002

Authority valid while current-state admissibility is inadmissible, indeterminate, stale, or reconciliation-required

### EMAH-PO-AUTH-003

Authority existed previously but current authority is expired, revoked, scope-mismatched, disputed, or continuity-unverified

### EMAH-PO-AUTH-004

Prior authorization exists while current reconciliation or execution eligibility fails

### EMAH-PO-AUTH-005

Credential is possessed while governing authority binding is absent, revoked, expired, invalid, or out of scope

### EMAH-PO-AUTH-006

Energy is physically AVAILABLE while authority remains unresolved, invalid, revoked, expired, or absent

### EMAH-PO-AUTH-007

Authority evidence is present while authority determination remains unresolved, invalid, expired, revoked, disputed, or scope-mismatched

### EMAH-PO-AUTH-008

An obligation is OPEN while no valid execution authority exists

## Discharge Boundary

A successful witness establishes architectural separability only within
the frozen EMAH model.

It does not automatically establish:

- implementation conformance;
- runtime enforcement;
- external-system correctness;
- production safety;
- global impossibility of authority collapse in arbitrary systems.

**Method Assigned != Proof Executed**

**Witness Constructed != Proof Accepted**

**Bounded Architectural Proof != Runtime Proof**

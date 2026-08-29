# EMAH-PROOF-AUTH-02-P02 — Authority Witness Repair Review

## Disposition

**SUBMITTED FOR RE-ADJUDICATION**

**AUTH PROOF OBLIGATIONS DISCHARGED: 0 / 8**

## Repaired Witnesses

### EMAH-AUTH-WIT-001

Repaired by explicitly instantiating:

CTL_COMMAND_CAPABLE + AUTH_UNRESOLVED

The capability-side premise and authority-side non-establishment are now both
represented.

### EMAH-AUTH-WIT-003

Repaired as an explicit temporal witness:

t0: AUTH_VALID

t1: AUTH_EXPIRED

The witness is bound to the authority temporal boundary.

### EMAH-AUTH-WIT-005

Repaired by representing credential possession as an explicit UAA-supplied
external premise:

CredentialPossessed = true

while EMAH consumes:

AUTH_REVOKED

No generic credential primitive is claimed as EMAH-owned.

### EMAH-AUTH-WIT-007

Repaired by explicitly instantiating both dimensions:

EVD_PRESENT + AUTH_DISPUTED

## Preserved Accepted Candidates

P02 does not alter:

- EMAH-AUTH-WIT-002
- EMAH-AUTH-WIT-004
- EMAH-AUTH-WIT-006
- EMAH-AUTH-WIT-008

## Boundary

Repair != Acceptance

Witness Acceptance != Proof Discharge

External UAA Premise != EMAH Primitive Ownership

Frozen Architecture != Proof Artifact

## Next Review

EMAH-PROOF-AUTH-02-R2 must independently re-adjudicate the four repaired
witnesses and confirm that the previously acceptable four remain unchanged.

Until R2:

**8 OPEN / 0 DISCHARGED**

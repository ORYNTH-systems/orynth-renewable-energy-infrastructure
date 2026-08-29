# EMAH-PROOF-AUTH-02-P01 — Separation Witness Construction Review

## Disposition

**SUBMITTED FOR WITNESS ADJUDICATION**

**AUTH PROOF OBLIGATIONS DISCHARGED: 0 / 8**

## Frozen Architecture

Freeze tag:

emah-architecture-v0.1.0-freeze

Frozen source commit:

5ef320941622c4ddfc48519d7e1ac89d55596e3c

Frozen source tree:

ca2d8f28c924e2e27d7877db71e3ff9dc71acb73

## Constructed Witnesses

- EMAH-AUTH-WIT-001 — Capability != Authority
- EMAH-AUTH-WIT-002 — Authority != Admissibility
- EMAH-AUTH-WIT-003 — Prior Authority != Current Execution Authority
- EMAH-AUTH-WIT-004 — Prior Authorization != Present Execution Eligibility
- EMAH-AUTH-WIT-005 — Credential Possession != Authority
- EMAH-AUTH-WIT-006 — Physical Availability != Authority
- EMAH-AUTH-WIT-007 — Evidence != Authority
- EMAH-AUTH-WIT-008 — Obligation != Authority

## Construction Finding

Eight candidate architecture-level separation witnesses were constructed.

Each witness attempts to exhibit a state in which the invariant's left-hand
condition can hold while the right-hand authority condition remains absent,
invalid, unresolved, revoked, expired, disputed, inadmissible, or otherwise
independently determined.

## P01 Boundary

This pass does not determine that any witness is semantically sufficient.

This pass does not:

- accept a witness;
- discharge a proof obligation;
- alter the frozen invariant;
- alter the proof registry;
- claim implementation proof;
- claim runtime enforcement;
- claim global proof.

## Required R1 Review

EMAH-PROOF-AUTH-02-R1 must independently adjudicate each witness for:

1. architecture admissibility;
2. left-hand satisfaction;
3. right-hand non-establishment;
4. genuine independence rather than circular assertion;
5. correct external-owner dependency;
6. sufficiency for the bounded non-collapse proposition;
7. absence of hidden semantic substitution.

Until R1 acceptance:

**8 OPEN / 0 DISCHARGED**

# EMAH / AHME AUTH Proposition Matrix

Status: **EMAH-PROOF-AUTH-01 / PROPOSITIONS ADJUDICATED**

Frozen architecture: `emah-architecture-v0.1.0-freeze`

## Governing Interpretation

The frozen operator `!=` is preserved exactly.

For proof adjudication it is treated as an architectural non-collapse
and separability requirement:

1. the left-hand condition must not itself constitute the right-hand condition;
2. the left-hand condition must not be sufficient, by itself, to establish
   the right-hand condition; and
3. an architecture-admitted witness state must be constructible in which
   the left side holds while the right side is absent, false, invalid,
   unresolved, or otherwise independently determined.

This interpretation does not rewrite the frozen invariant.

| Proof Obligation | Frozen Invariant | Adjudication | Proof Status |
| --- | --- | --- | --- |
| EMAH-PO-AUTH-001 | EMAH-INV-AUTH-001 | PROOF-READY | OPEN |
| EMAH-PO-AUTH-002 | EMAH-INV-AUTH-002 | PROOF-READY | OPEN |
| EMAH-PO-AUTH-003 | EMAH-INV-AUTH-003 | PROOF-READY | OPEN |
| EMAH-PO-AUTH-004 | EMAH-INV-AUTH-004 | PROOF-READY | OPEN |
| EMAH-PO-AUTH-005 | EMAH-INV-AUTH-005 | PROOF-READY | OPEN |
| EMAH-PO-AUTH-006 | EMAH-INV-AUTH-006 | PROOF-READY | OPEN |
| EMAH-PO-AUTH-007 | EMAH-INV-AUTH-007 | PROOF-READY / CROSS-FAMILY OVERLAP | OPEN |
| EMAH-PO-AUTH-008 | EMAH-INV-AUTH-008 | PROOF-READY / CROSS-FAMILY OVERLAP | OPEN |

## Cross-Family Notes

- AUTH-007 overlaps the evidence-family authority firewall.
  The overlap is preserved; it is not treated as semantic collapse.
- AUTH-008 overlaps the obligation-family authority firewall.
  The overlap is preserved; it is not treated as semantic collapse.

No frozen proposition was amended by this adjudication.

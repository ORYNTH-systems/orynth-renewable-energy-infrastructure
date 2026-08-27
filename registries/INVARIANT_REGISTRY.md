# EMAH — Invariant Registry

## Status

**EMAH-ARCH-12-P01 / CANDIDATE**

| ID | Family | Invariant |
|---|---|---|
| EMAH-INV-AUTH-001 | AUTH | Capability != Authority |
| EMAH-INV-AUTH-002 | AUTH | Authority != Admissibility |
| EMAH-INV-AUTH-003 | AUTH | Prior Authority != Current Execution Authority |
| EMAH-INV-AUTH-004 | AUTH | Prior Authorization != Present Execution Eligibility |
| EMAH-INV-AUTH-005 | AUTH | Credential Possession != Authority |
| EMAH-INV-AUTH-006 | AUTH | Physical Availability != Authority |
| EMAH-INV-AUTH-007 | AUTH | Evidence != Authority |
| EMAH-INV-AUTH-008 | AUTH | Obligation != Authority |
| EMAH-INV-EXE-001 | EXE | Command != Execution Attempt |
| EMAH-INV-EXE-002 | EXE | Execution Attempt != Execution Completion |
| EMAH-INV-EXE-003 | EXE | Execution != Observed Physical Effect |
| EMAH-INV-EXE-004 | EXE | Execution Record != Physical Effect Proof |
| EMAH-INV-EXE-005 | EXE | Blocked != Failed Execution |
| EMAH-INV-EXE-006 | EXE | Block != Abort |
| EMAH-INV-EXE-007 | EXE | Temporal Sequence != Causal Attribution |
| EMAH-INV-EXE-008 | EXE | No Observation != O = 0 |
| EMAH-INV-EXE-009 | EXE | Under-Effect Residual != Over-Effect Excess |
| EMAH-INV-EXE-010 | EXE | Vector Effect != Scalar Effect by default |
| EMAH-INV-REC-001 | REC | Residual != Recoverable |
| EMAH-INV-REC-002 | REC | Recoverable != Recovered |
| EMAH-INV-REC-003 | REC | Recovered != Requalified |
| EMAH-INV-REC-004 | REC | Requalified != Reintegrated |
| EMAH-INV-REC-005 | REC | Reintegrated != Authorized for renewed consequential use |
| EMAH-INV-REC-006 | REC | Recovery != Restoration |
| EMAH-INV-REC-007 | REC | Recovery != Historical Erasure |
| EMAH-INV-REC-008 | REC | Reintegration != Historical Reset |
| EMAH-INV-REC-009 | REC | EnergyEffectResidual != EnergyResidual |
| EMAH-INV-REC-010 | REC | Remaining Capacity != Recoverability |
| EMAH-INV-REC-011 | REC | Energy Continuity != Rule Identity Continuity |
| EMAH-INV-REC-012 | REC | Identity-Relevant Preservation != Identity Continuity |
| EMAH-INV-EVD-001 | EVD | Evidence != Authority |
| EMAH-INV-EVD-002 | EVD | Evidence Present != Evidence Admissible |
| EMAH-INV-EVD-003 | EVD | Evidence Admissible != Evidence Sufficient |
| EMAH-INV-EVD-004 | EVD | Provenance != Truth |
| EMAH-INV-EVD-005 | EVD | Derived Evidence != Independent Observation |
| EMAH-INV-EVD-006 | EVD | Reconstructed Provenance != Preserved Provenance |
| EMAH-INV-EVD-007 | EVD | Reconstruction != Preservation |
| EMAH-INV-EVD-008 | EVD | Reconstructed Record != Original Observation |
| EMAH-INV-EVD-009 | EVD | Complete Reconstruction Within Scope != Global Complete Reconstruction |
| EMAH-INV-EVD-010 | EVD | Execution Block != Proof of Block |
| EMAH-INV-EVD-011 | EVD | Proof of Block != Execution Authority |
| EMAH-INV-EVD-012 | EVD | Certificate != Physical Energy Identity |
| EMAH-INV-OBL-001 | OBL | Obligation != Authority |
| EMAH-INV-OBL-002 | OBL | Obligation != Admissibility |
| EMAH-INV-OBL-003 | OBL | Obligation != Settlement |
| EMAH-INV-OBL-004 | OBL | Partial Satisfaction != Full Satisfaction |
| EMAH-INV-OBL-005 | OBL | Obligation Residual != EnergyEffectResidual |
| EMAH-INV-OBL-006 | OBL | Obligation Residual != EnergyResidual |
| EMAH-INV-OBL-007 | OBL | Compensation Cannot Self-Authorize |
| EMAH-INV-OBL-008 | OBL | Recovery != Obligation Erasure |
| EMAH-INV-OBL-009 | OBL | Settlement != Obligation Erasure |
| EMAH-INV-OBL-010 | OBL | Object Transfer != Obligation Transfer |
| EMAH-INV-INT-001 | INT | Interface != Inheritance |
| EMAH-INV-INT-002 | INT | Inheritance != Ownership |
| EMAH-INV-INT-003 | INT | Reference != Ownership |
| EMAH-INV-INT-004 | INT | Dependency != Ownership |
| EMAH-INV-INT-005 | INT | Need for Primitive != EMAH Ownership of Primitive |
| EMAH-INV-FIN-001 | FIN | Physical Effect != Economic Effect |
| EMAH-INV-FIN-002 | FIN | Physical Delivery != Financial Settlement |
| EMAH-INV-FIN-003 | FIN | Payment != Energy Delivery |
| EMAH-INV-FIN-004 | FIN | Physical Partial Effect != Financial Partial Effect |
| EMAH-INV-FIN-005 | FIN | EnergyEffectResidual != Financial Residual |
| EMAH-INV-FIN-006 | FIN | Settlement != Authority |
| EMAH-INV-FIN-007 | FIN | Physical Effect Equality != Settlement Finality |
| EMAH-INV-FIN-008 | FIN | ReserveDesignation != Execution Authority |

## Invariant Count

**65**

## Family Counts

- AUTH: 8
- EXE: 10
- REC: 12
- EVD: 12
- OBL: 10
- INT: 5
- FIN: 8

## Governing Rule

**Invariant != Proof**

No invariant in this registry constitutes formal verification.


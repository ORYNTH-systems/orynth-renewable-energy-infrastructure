# EMAH — Proof Obligation Registry

## Status

**EMAH-ARCH-13 / ACCEPTED**

Every proof obligation in this registry begins OPEN.

| Proof Obligation | Source Invariant | Family | Invariant Statement | Status |
|---|---|---|---|---|
| EMAH-PO-AUTH-001 | EMAH-INV-AUTH-001 | AUTH | Capability != Authority | OPEN |
| EMAH-PO-AUTH-002 | EMAH-INV-AUTH-002 | AUTH | Authority != Admissibility | OPEN |
| EMAH-PO-AUTH-003 | EMAH-INV-AUTH-003 | AUTH | Prior Authority != Current Execution Authority | OPEN |
| EMAH-PO-AUTH-004 | EMAH-INV-AUTH-004 | AUTH | Prior Authorization != Present Execution Eligibility | OPEN |
| EMAH-PO-AUTH-005 | EMAH-INV-AUTH-005 | AUTH | Credential Possession != Authority | OPEN |
| EMAH-PO-AUTH-006 | EMAH-INV-AUTH-006 | AUTH | Physical Availability != Authority | OPEN |
| EMAH-PO-AUTH-007 | EMAH-INV-AUTH-007 | AUTH | Evidence != Authority | OPEN |
| EMAH-PO-AUTH-008 | EMAH-INV-AUTH-008 | AUTH | Obligation != Authority | OPEN |
| EMAH-PO-EXE-001 | EMAH-INV-EXE-001 | EXE | Command != Execution Attempt | OPEN |
| EMAH-PO-EXE-002 | EMAH-INV-EXE-002 | EXE | Execution Attempt != Execution Completion | OPEN |
| EMAH-PO-EXE-003 | EMAH-INV-EXE-003 | EXE | Execution != Observed Physical Effect | OPEN |
| EMAH-PO-EXE-004 | EMAH-INV-EXE-004 | EXE | Execution Record != Physical Effect Proof | OPEN |
| EMAH-PO-EXE-005 | EMAH-INV-EXE-005 | EXE | Blocked != Failed Execution | OPEN |
| EMAH-PO-EXE-006 | EMAH-INV-EXE-006 | EXE | Block != Abort | OPEN |
| EMAH-PO-EXE-007 | EMAH-INV-EXE-007 | EXE | Temporal Sequence != Causal Attribution | OPEN |
| EMAH-PO-EXE-008 | EMAH-INV-EXE-008 | EXE | No Observation != O = 0 | OPEN |
| EMAH-PO-EXE-009 | EMAH-INV-EXE-009 | EXE | Under-Effect Residual != Over-Effect Excess | OPEN |
| EMAH-PO-EXE-010 | EMAH-INV-EXE-010 | EXE | Vector Effect != Scalar Effect by default | OPEN |
| EMAH-PO-REC-001 | EMAH-INV-REC-001 | REC | Residual != Recoverable | OPEN |
| EMAH-PO-REC-002 | EMAH-INV-REC-002 | REC | Recoverable != Recovered | OPEN |
| EMAH-PO-REC-003 | EMAH-INV-REC-003 | REC | Recovered != Requalified | OPEN |
| EMAH-PO-REC-004 | EMAH-INV-REC-004 | REC | Requalified != Reintegrated | OPEN |
| EMAH-PO-REC-005 | EMAH-INV-REC-005 | REC | Reintegrated != Authorized for renewed consequential use | OPEN |
| EMAH-PO-REC-006 | EMAH-INV-REC-006 | REC | Recovery != Restoration | OPEN |
| EMAH-PO-REC-007 | EMAH-INV-REC-007 | REC | Recovery != Historical Erasure | OPEN |
| EMAH-PO-REC-008 | EMAH-INV-REC-008 | REC | Reintegration != Historical Reset | OPEN |
| EMAH-PO-REC-009 | EMAH-INV-REC-009 | REC | EnergyEffectResidual != EnergyResidual | OPEN |
| EMAH-PO-REC-010 | EMAH-INV-REC-010 | REC | Remaining Capacity != Recoverability | OPEN |
| EMAH-PO-REC-011 | EMAH-INV-REC-011 | REC | Energy Continuity != Rule Identity Continuity | OPEN |
| EMAH-PO-REC-012 | EMAH-INV-REC-012 | REC | Identity-Relevant Preservation != Identity Continuity | OPEN |
| EMAH-PO-EVD-001 | EMAH-INV-EVD-001 | EVD | Evidence != Authority | OPEN |
| EMAH-PO-EVD-002 | EMAH-INV-EVD-002 | EVD | Evidence Present != Evidence Admissible | OPEN |
| EMAH-PO-EVD-003 | EMAH-INV-EVD-003 | EVD | Evidence Admissible != Evidence Sufficient | OPEN |
| EMAH-PO-EVD-004 | EMAH-INV-EVD-004 | EVD | Provenance != Truth | OPEN |
| EMAH-PO-EVD-005 | EMAH-INV-EVD-005 | EVD | Derived Evidence != Independent Observation | OPEN |
| EMAH-PO-EVD-006 | EMAH-INV-EVD-006 | EVD | Reconstructed Provenance != Preserved Provenance | OPEN |
| EMAH-PO-EVD-007 | EMAH-INV-EVD-007 | EVD | Reconstruction != Preservation | OPEN |
| EMAH-PO-EVD-008 | EMAH-INV-EVD-008 | EVD | Reconstructed Record != Original Observation | OPEN |
| EMAH-PO-EVD-009 | EMAH-INV-EVD-009 | EVD | Complete Reconstruction Within Scope != Global Complete Reconstruction | OPEN |
| EMAH-PO-EVD-010 | EMAH-INV-EVD-010 | EVD | Execution Block != Proof of Block | OPEN |
| EMAH-PO-EVD-011 | EMAH-INV-EVD-011 | EVD | Proof of Block != Execution Authority | OPEN |
| EMAH-PO-EVD-012 | EMAH-INV-EVD-012 | EVD | Certificate != Physical Energy Identity | OPEN |
| EMAH-PO-OBL-001 | EMAH-INV-OBL-001 | OBL | Obligation != Authority | OPEN |
| EMAH-PO-OBL-002 | EMAH-INV-OBL-002 | OBL | Obligation != Admissibility | OPEN |
| EMAH-PO-OBL-003 | EMAH-INV-OBL-003 | OBL | Obligation != Settlement | OPEN |
| EMAH-PO-OBL-004 | EMAH-INV-OBL-004 | OBL | Partial Satisfaction != Full Satisfaction | OPEN |
| EMAH-PO-OBL-005 | EMAH-INV-OBL-005 | OBL | Obligation Residual != EnergyEffectResidual | OPEN |
| EMAH-PO-OBL-006 | EMAH-INV-OBL-006 | OBL | Obligation Residual != EnergyResidual | OPEN |
| EMAH-PO-OBL-007 | EMAH-INV-OBL-007 | OBL | Compensation Cannot Self-Authorize | OPEN |
| EMAH-PO-OBL-008 | EMAH-INV-OBL-008 | OBL | Recovery != Obligation Erasure | OPEN |
| EMAH-PO-OBL-009 | EMAH-INV-OBL-009 | OBL | Settlement != Obligation Erasure | OPEN |
| EMAH-PO-OBL-010 | EMAH-INV-OBL-010 | OBL | Object Transfer != Obligation Transfer | OPEN |
| EMAH-PO-INT-001 | EMAH-INV-INT-001 | INT | Interface != Inheritance | OPEN |
| EMAH-PO-INT-002 | EMAH-INV-INT-002 | INT | Inheritance != Ownership | OPEN |
| EMAH-PO-INT-003 | EMAH-INV-INT-003 | INT | Reference != Ownership | OPEN |
| EMAH-PO-INT-004 | EMAH-INV-INT-004 | INT | Dependency != Ownership | OPEN |
| EMAH-PO-INT-005 | EMAH-INV-INT-005 | INT | Need for Primitive != EMAH Ownership of Primitive | OPEN |
| EMAH-PO-FIN-001 | EMAH-INV-FIN-001 | FIN | Physical Effect != Economic Effect | OPEN |
| EMAH-PO-FIN-002 | EMAH-INV-FIN-002 | FIN | Physical Delivery != Financial Settlement | OPEN |
| EMAH-PO-FIN-003 | EMAH-INV-FIN-003 | FIN | Payment != Energy Delivery | OPEN |
| EMAH-PO-FIN-004 | EMAH-INV-FIN-004 | FIN | Physical Partial Effect != Financial Partial Effect | OPEN |
| EMAH-PO-FIN-005 | EMAH-INV-FIN-005 | FIN | EnergyEffectResidual != Financial Residual | OPEN |
| EMAH-PO-FIN-006 | EMAH-INV-FIN-006 | FIN | Settlement != Authority | OPEN |
| EMAH-PO-FIN-007 | EMAH-INV-FIN-007 | FIN | Physical Effect Equality != Settlement Finality | OPEN |
| EMAH-PO-FIN-008 | EMAH-INV-FIN-008 | FIN | ReserveDesignation != Execution Authority | OPEN |

## Proof Obligation Count

**65**

## Initial Status Rule

All 65 obligations are:

**OPEN**

## Governing Distinctions

**Invariant Exists != Invariant Proven**

**Proof Obligation Defined != Proof Obligation Discharged**

No registry row constitutes proof, verification, conformance, or discharge.


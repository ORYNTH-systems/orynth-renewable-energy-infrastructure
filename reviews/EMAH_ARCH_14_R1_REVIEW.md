# EMAH-ARCH-14-R1 — Threat / Failure Taxonomy Acceptance Review

## Disposition

**ACCEPTED**

## Reviewed Candidate

`EMAH-ARCH-14-P01`

## Closure

Accepted invariants:

**65**

Primary threat / failure classes:

**65**

Primary proof obligations:

**65 OPEN**

Traceability mappings:

**65**

---

## Findings

### R01 — Source Corpus

PASS.

The taxonomy derives from the exact 65 accepted ARCH-12 invariants.

### R02 — Threat / Failure Corpus

PASS.

Exactly 65 primary EMAH / AHME threat and failure classes are admitted.

### R03 — Proof Preservation

PASS.

All 65 ARCH-13 primary proof obligations remain OPEN.

ARCH-14 acceptance does not discharge any proof obligation.

### R04 — Traceability Closure

PASS.

The accepted mapping is:

`65 invariants <-> 65 threat/failure classes <-> 65 OPEN proof obligations`

### R05 — No Orphans

PASS.

Orphan invariants: 0

Orphan threat/failure classes: 0

Orphan primary proof obligations: 0

### R06 — No Phantom Mappings

PASS.

No traceability row references an unknown invariant, threat class, or proof
obligation.

### R07 — Identification / Demonstration Separation

PASS.

The architecture preserves:

**Threat Identified != Threat Demonstrated**

### R08 — Demonstration / Exploitability Separation

PASS.

The architecture preserves:

**Threat Demonstrated != Threat Exploitable**

### R09 — Exploitability / Observation Separation

PASS.

The architecture preserves:

**Threat Exploitable != Failure Observed**

### R10 — No-Failure Fallacy

PASS.

The architecture preserves:

**No Observed Failure != Failure Impossible**

### R11 — Taxonomy / Proof Boundary

PASS.

The architecture preserves:

**Threat Taxonomy != Proof Discharge**

Threat identification does not change the associated proof obligation from
OPEN.

### R12 — Taxonomy / Risk Boundary

PASS.

Threat/failure classification does not independently establish severity,
likelihood, exploitability, or risk score.

### R13 — Family Integrity

PASS.

Accepted family counts remain:

- AUTH: 8
- EXE: 10
- REC: 12
- EVD: 12
- OBL: 10
- INT: 5
- FIN: 8

### R14 — Authority Failure Coverage

PASS.

The taxonomy explicitly covers authority inferred from capability, historical
authority, credentials, physical availability, evidence, and obligation.

### R15 — Execution / Effect Failure Coverage

PASS.

The taxonomy explicitly covers command/execution collapse, block/failure
collapse, causal overclaim, missing-observation collapse, and effect-shape
collapse.

### R16 — Recovery / Continuity Failure Coverage

PASS.

The taxonomy explicitly covers residual/recoverability collapse, recovery /
restoration collapse, renewed-authority bypass, historical erasure, and
continuity collapse.

### R17 — Evidence / Provenance Failure Coverage

PASS.

The taxonomy explicitly covers evidence-as-authority, provenance-as-truth,
reconstruction-as-preservation, Proof-of-Block collapse, and certificate /
physical-identity collapse.

### R18 — Obligation / Interface Failure Coverage

PASS.

The taxonomy explicitly covers obligation-as-authority, compensation
self-authorization, obligation erasure, interface/inheritance collapse, and
ownership transfer by reference or dependency.

### R19 — Physical / Financial Failure Coverage

PASS.

The taxonomy explicitly covers payment-as-delivery, settlement-as-delivery,
economic/physical effect collapse, residual collapse, and settlement-as-
authority.

### R20 — Generic Ownership Boundary

PASS.

ARCH-14 remains an EMAH / AHME threat and failure taxonomy.

It does not establish generic ORYNTH threat ownership.

### R21 — Forward Boundary

PASS.

Reference component architecture remains reserved for ARCH-15.

---

## Accepted State

EMAH-ARCH-00: ESTABLISHED

EMAH-ARCH-01: ACCEPTED

EMAH-ARCH-02: ACCEPTED

EMAH-ARCH-03: ACCEPTED

EMAH-ARCH-04: ACCEPTED

EMAH-ARCH-05: ACCEPTED

EMAH-ARCH-06: ACCEPTED

EMAH-ARCH-07: ACCEPTED

EMAH-ARCH-08: ACCEPTED

EMAH-ARCH-09: ACCEPTED

EMAH-ARCH-10: ACCEPTED

EMAH-ARCH-11: ACCEPTED

EMAH-ARCH-12: ACCEPTED

EMAH-ARCH-13: ACCEPTED

EMAH-ARCH-14: ACCEPTED

EMAH-ARCH-15: AUTHORIZED TO BEGIN

---

## Taxonomy State

Threat / failure classes:

**65 IDENTIFIED**

Demonstrated:

**0**

Exploitable:

**0**

Observed:

**0**

Primary proof obligations:

**65 OPEN**

---

## Forward Constraint

EMAH-ARCH-15 may define reference components implementing or supporting the
accepted architecture.

It may not:

- mark any OPEN proof obligation discharged merely because a component exists;
- claim implementation correctness from architectural correspondence alone;
- treat component presence as runtime enforcement;
- treat logging or audit components as authority;
- treat measurement components as physical truth without bounded observation;
- collapse physical and financial components;
- collapse UAA, AOMS, EIP, IPT, Proof of Block, or Financial Infrastructure
  ownership into EMAH;
- resolve generic Principal, Jurisdiction, AutonomousAgent, or Obligation
  ownership;
- preempt simulation architecture reserved for ARCH-16.

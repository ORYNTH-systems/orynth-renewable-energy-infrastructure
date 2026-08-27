# C2 — Inherited ORYNTH Architecture

## Status

**EMAH-ARCH-02 / ACCEPTED CONSTITUTIONAL RECORD**

This record defines the inherited-architecture boundary for EMAH / AHME.

It determines which upstream ORYNTH semantics may be consumed by EMAH without transferring canonical ownership.

It does not authorize EMAH to redefine upstream primitives.

---

## 1. Governing Principle

Inherited architecture is dependency, not duplication.

Canonical ownership remains with the upstream architecture unless an explicit architecture-reconciliation record changes ownership.

Therefore:

**Inheritance != Ownership**

**Interface != Ownership**

**Implementation Reuse != Ownership**

**Domain Specialization != Redefinition**

The need for a primitive does not establish that EMAH owns that primitive.

---

## 2. ORYNTH Dependency Position

EMAH is an applied-domain architecture.

It may depend upon foundational theory, constitutional architecture, protocols and control models, runtime systems, and verification / audit infrastructure.

A dependency relation does not collapse the identities of the participating frameworks.

EMAH shall preserve the semantic identity and ownership boundary of every inherited primitive.

---

## 3. UAA — Unified Agency Architecture

### Canonical EMAH Dependency

UAA owns the generic execution-authority architecture used by EMAH.

Inherited properties include:

- non-default execution authority;
- capability / authority separation;
- admissibility before authorization;
- authorization-artifact binding;
- control-point verification;
- immediate pre-execution authority validation;
- fail-closed execution;
- replay resistance;
- non-bypassable enforcement; and
- no governed effect on block.

### EMAH Non-Redefinition Boundary

EMAH shall not redefine the creation or generic nature of execution authority.

Energy-specific authority representations may specialize UAA only where the specialization is explicitly bounded to the energy domain.

### Source Basis

- `ORYNTH-systems/uaa-core`
- `core/foundational-invariants.md`
- `formal/execution-semantics.md`

---

## 4. EIP — Execution Integrity Protocol

### Canonical EMAH Dependency

EIP owns execution-time rule identity continuity.

Inherited properties include:

- rule identity continuity;
- rule/version continuity;
- authority-binding continuity;
- delegation continuity;
- policy-translation continuity;
- execution-binding continuity; and
- verification continuity.

### EMAH Non-Redefinition Boundary

EMAH shall not redefine generic execution-time rule identity continuity.

Energy-specific rules and instructions may be bound to EIP continuity semantics.

### Source Basis

- `ORYNTH-systems/eip-protocol`
- `spec/EIP_EXECUTION_SPEC.md`
- `doctrine/EIP_CORPUS_ARCHITECTURE.md`

---

## 5. AOMS — Adaptive Orchestration Management System

### Canonical EMAH Dependency

AOMS owns current-state reconciliation for previously authorized execution.

Inherited properties include:

- AuthorizedState / CurrentState distinction;
- current-state reconstruction;
- action-drift detection;
- current authority re-evaluation;
- policy-state reconciliation;
- dependency-state reconciliation;
- resource-state reconciliation;
- environment-state reconciliation; and
- present execution eligibility.

### Critical Boundary

AOMS does not establish that prior authorization remains sufficient.

Its governing distinction is:

**Authorization != Present Execution Eligibility**

### EMAH Non-Redefinition Boundary

EMAH shall not redefine generic current-state reconciliation.

EMAH may introduce energy-specific state dimensions that AOMS-style reconciliation evaluates.

### Source Basis

- `ORYNTH-systems/aoms-reference-runtime`
- `doctrine/AOMS_DOCTRINE.md`
- `spec/AOMS_EXECUTION_SPEC.md`

---

## 6. Proof of Block

### Canonical EMAH Dependency

Proof of Block owns governed refusal evidence and refusal reconstruction semantics.

Its admitted concern includes evidence associated with:

- continuity failure;
- admissibility failure;
- provenance failure;
- compound constitutional failure; and
- reconstruction of a governed refusal.

### Critical Boundary

Proof of Block does not replace UAA's execution-prevention semantics.

Therefore:

**Execution Block != Proof of Block**

UAA determines whether governed execution may proceed.

Proof of Block may establish reconstructable evidence of why governed execution did not proceed.

### EMAH Non-Redefinition Boundary

EMAH may define energy-specific Proof-of-Block profiles.

It shall not redefine Proof of Block itself.

### Source Basis

- `ORYNTH-systems/proof-of-block`
- `spec/POB_REFERENCE_SPEC.md`
- `reports/PB_B_CONTINUITY_BLOCK.md`
- `reports/PB_C_ADMISSIBILITY_BLOCK.md`
- `reports/PB_D_PROVENANCE_BLOCK.md`

---

## 7. Integrity Preservation Theory

### EMAH Interface

IPT supplies preservation-oriented distinctions relevant to EMAH and AHME.

Relevant distinctions include:

- continuity != integrity;
- recoverability != current preservation state;
- recovery != guaranteed identity preservation;
- evidence sufficiency constrains evaluation; and
- domain adaptation shall preserve constitutional distinctions.

### Critical Boundary

IPT evaluates preservation-oriented integrity.

It does not authorize, deny, execute, regulate, or prescribe consequential energy action.

Therefore:

**IPT Recoverability Evaluation != AHME Recovery Execution**

### AHME Relation

AHME owns energy-domain recovery, requalification, reintegration, and regenerative-return semantics.

IPT constrains how recovery, recoverability, continuity, and preservation claims may be interpreted.

### Source Basis

- `ORYNTH-systems/ipt-reference-lab`
- `spec/CONTINUITY_SPEC.md`
- `spec/IPT_REFERENCE_SPEC.md`
- `doctrine/CONSTITUTIONAL_INVARIANTS.md`

---

## 8. ORYNTH Financial Infrastructure

### Interface Boundary

Financial Infrastructure owns financial-domain state and transition semantics that EMAH must not duplicate.

Relevant interfaces include:

- economic effect;
- partial economic effect;
- settlement state;
- compensation;
- reversal;
- financial reconstruction;
- financial finality;
- cross-jurisdiction financial state; and
- autonomous economic agency.

### Required Separation

**Physical Energy Effect != Economic Effect**

**Energy Delivery != Financial Settlement**

**Physical Partial Effect != Partial Economic Effect**

**Energy Finality != Financial Settlement Finality**

### EMAH Ownership

EMAH owns energy-specific physical-state and consequential-energy-effect semantics.

Financial Infrastructure owns financial consequences and settlement semantics.

### Source Basis

- `ORYNTH-systems/orynth-financial-infrastructure`
- `01-inherited/INHERITED_ARCHITECTURE_INDEX.md`
- `02-core/CANONICAL_FINANCIAL_INVARIANT_DOCTRINE.md`
- `02-core/components/FIN-COMP-005_Economic_Effect_Observer.md`
- `02-core/components/FIN-COMP-006_Partial_Effect_Detector.md`
- `02-core/components/FIN-COMP-007_Settlement_State_Controller.md`

---

## 9. Constitutional Execution Engine

### Interface Boundary

The Constitutional Execution Engine supplies a domain-independent execution-evaluation realization organized around:

- Identity;
- Intent;
- Constraint;
- Resource;
- Authority;
- Temporal state;
- Evidence; and
- Execution Verdict.

EMAH may interface with these execution primitives.

The presence of a primitive in the execution engine does not independently establish portfolio-wide canonical ownership.

### Source Basis

- `ORYNTH-systems/constitutional-execution-engine`
- `doctrine/CONSTITUTIONAL_PRIMITIVES.md`

---

## 10. Evidence / Audit / Assurance

ORYNTH Audit Framework and Execution Assurance provide relevant evidence-use, reconstruction, admission, sufficiency, and assurance semantics.

However, evidence responsibilities shall remain layer-specific.

Execution evidence may originate in UAA, EIP, AOMS, Proof of Block, EMAH, Financial Infrastructure, or another architecture.

Audit and assurance determine how evidence participates in review, reconstruction, findings, and assurance.

Evidence availability does not create execution authority.

### Important Status Boundary

Execution Assurance evidence-admissibility material inspected during ARCH-02 remains constitutional-draft material.

EMAH shall not elevate draft assurance language into upstream canonical ownership.

---

## 11. Morning Star

Morning Star supplies ORYNTH dependency-order and constitutional-entry context.

It establishes that downstream applications must declare materially necessary upstream dependencies without collapsing frameworks into one another.

Morning Star does not replace the upstream frameworks it introduces.

EMAH therefore treats Morning Star as constitutional dependency context rather than as owner of UAA, EIP, AOMS, Proof of Block, IPT, or Financial Infrastructure semantics.

---

## 12. Requiem Pandemonium

Requiem Pandemonium may provide threat, containment, replay, provenance, distributed-system, and failure-analysis context relevant to future EMAH architecture.

ARCH-02 does not admit Requiem as canonical owner of a generic EMAH primitive.

Any future Requiem dependency must be bound to an exact semantic requirement.

---

## 13. Unresolved Generic Ownership

ARCH-02 does not establish an upstream canonical owner for:

### 13.1 Generic Obligation Preservation

AOMS does not own generic obligation semantics.

Energy-domain obligations may be introduced later, but no generic ORYNTH ownership claim is admitted here.

### 13.2 Generic Jurisdictional Authority

Financial Infrastructure contains financial jurisdiction architecture.

That does not establish generic jurisdictional-authority ownership across ORYNTH.

### 13.3 Generic Autonomous-Agent Authority

Financial Infrastructure contains autonomous-economic-agency architecture.

That does not establish generic autonomous-agent authority ownership across ORYNTH.

Until reconciled, these remain:

**UNRESOLVED GENERIC OWNERSHIP**

No downstream file may silently assign them to an upstream architecture.

---

## 14. EMAH-Owned Domain Surface

Subject to later ontology and lifecycle review, EMAH is eligible to define domain-specific semantics for:

- renewable-energy physical state;
- energy-source qualification;
- energy capacity;
- storage state;
- reserve state;
- physical energy transfer;
- consequential physical energy effect;
- partial physical energy effect;
- residual energetic state;
- recoverable energetic state;
- energy requalification;
- energy reintegration;
- regenerative return; and
- energy-domain continuity.

This section authorizes only the ownership boundary.

It does not yet admit canonical objects, states, or transitions.

---

## 15. AHME-Owned Domain Surface

AHME is eligible to define energy-domain semantics for:

- residual energetic state;
- recoverability;
- recovery;
- requalification;
- reintegration;
- regenerated availability;
- regenerative continuity; and
- renewed admission.

AHME shall preserve:

**Recovery != Restoration**

**Recovered != Requalified**

**Requalified != Readmitted**

**Readmitted != Authorized for renewed consequential use**

---

## 16. Forward Gate

EMAH-ARCH-02 establishes semantic ownership boundaries only.

It does not itself create the energy ontology.

Following acceptance of this record:

**EMAH-ARCH-03 — Canonical Object System**

may proceed subject to the ownership restrictions established here.

Generic obligation architecture, generic jurisdictional authority, and generic autonomous-agent authority remain unresolved and may not be silently canonized during ARCH-03.

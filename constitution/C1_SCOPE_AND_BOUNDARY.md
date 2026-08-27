# C1 — Scope and Boundary

## Status

**EMAH-ARCH-01 / CANDIDATE CONSTITUTIONAL RECORD**

This record establishes preliminary distinctions that the later EMAH architecture must preserve.

These distinctions are architectural boundaries, not yet formal invariants.

---

## 1. Governing Scope

EMAH concerns consequential state transitions involving renewable-energy infrastructure and the physical, computational, institutional, evidentiary, and continuity states associated with those transitions.

The initial scope may eventually include:

- renewable generation;
- distributed energy resources;
- energy storage;
- microgrids;
- grid-connected resources;
- building energy systems;
- vehicle energy systems;
- community energy systems;
- energy transfer;
- reserve capacity;
- demand response;
- recovery and reuse;
- autonomous or delegated energy agents;
- energy-linked market and settlement interfaces; and
- evidence associated with consequential energy execution.

Inclusion in scope does not imply that a component is already modeled.

---

## 2. Required Separations

EMAH must not presume equivalence among the following categories.

### 2.1 Capability and Authority

**Capability != Authority**

A device, controller, principal, credential, model, agent, or infrastructure component may possess the technical capability to initiate a transition without possessing authority to cause that transition.

---

### 2.2 Authority and Admissibility

**Authority != Admissibility**

Possession of relevant authority does not establish that a specific transition is admissible under the present state, obligations, temporal conditions, jurisdiction, safety envelope, or infrastructure condition.

---

### 2.3 Command and Execution

**Command != Execution**

Issuance or acceptance of a command does not establish that physical execution occurred.

---

### 2.4 Execution and Effect

**Execution != Consequential Effect**

A transition may begin, partially execute, fail, abort, diverge, or produce a result different from its intended effect.

---

### 2.5 Physical State and Economic State

**Physical Energy State != Economic Energy State**

Ownership, pricing, payment, contractual rights, market positions, credits, and settlement records do not by themselves establish physical generation, storage, delivery, transfer, or consumption.

---

### 2.6 Payment and Delivery

**Payment != Energy Delivery**

A settled financial transaction does not establish the corresponding physical effect.

Likewise, a physical effect does not automatically establish correct financial settlement.

---

### 2.7 Meter Evidence and Authority

**Meter Record != Authority**

A meter may provide evidence about observed state or flow.

Its record does not authorize the observed transition.

---

### 2.8 Evidence and Legitimacy

**Evidence of Execution != Evidence of Legitimate Execution**

A system may produce complete, tamper-evident, reproducible evidence of an execution that was never properly authorized or admitted.

Evidence therefore cannot substitute for authority or admissibility.

---

### 2.9 Environmental Attribute and Physical Identity

**Renewable Attribute != Persistent Physical Energy Identity**

Environmental attributes, certificates, claims of origin, accounting constructs, and market representations must not be presumed to constitute persistent physical identity of electricity or another energy carrier.

---

### 2.10 Ownership, Custody, and Execution Authority

**Ownership != Custody != Execution Authority**

An owner may not be the operator.

A custodian may not possess consequential execution authority.

An operator may possess only bounded delegated authority.

The architecture must preserve these distinctions.

---

### 2.11 Optimization and Governance

**Optimization != Governance**

A result that maximizes efficiency, revenue, resilience, utilization, carbon reduction, availability, or another objective does not thereby become an admissible or authorized transition.

Optimization must operate inside an independently governed execution envelope.

---

### 2.12 Recovery and Restoration

**Recovery != Restoration**

Recovered capacity does not necessarily restore the prior system state, identity, entitlement, obligation position, authority state, or continuity claim.

---

### 2.13 Recovery and Readmission

**Recovered != Automatically Readmitted**

Recovered, regenerated, or newly available capacity must not automatically re-enter consequential execution.

Requalification and readmission may be required.

---

## 3. Multi-State Requirement

EMAH will develop a state architecture capable of representing multiple simultaneous state dimensions rather than collapsing all energy status into a single state variable.

At minimum, later architecture must evaluate whether separate representations are required for:

- physical state;
- authority state;
- admissibility state;
- control state;
- economic state;
- evidentiary state;
- environmental-attribute state; and
- continuity state.

The exact canonical state model is reserved for a later pass.

---

## 4. Domain Boundary

EMAH is not authorized by this record to redefine general ORYNTH concepts.

Where ORYNTH already owns a primitive relating to authority, admissibility, obligations, execution integrity, evidence, blocking, recovery, or consequential control, EMAH must identify that ownership before introducing an energy-specific representation.

Semantic convenience is insufficient grounds for duplication.

---

## 5. AHME Boundary

AHME is provisionally scoped as the regenerative-return subsystem of EMAH.

Its later architecture may govern:

- residual state;
- recoverability;
- recovery;
- requalification;
- reintegration;
- regenerated availability;
- continuity; and
- renewed admission.

AHME is not yet a canonical ontology or state machine.

---

## 6. Explicit Non-Claims

This repository does not presently establish:

- production readiness;
- grid safety;
- regulatory compliance;
- market compliance;
- environmental certification;
- commercial deployment readiness;
- autonomous dispatch safety;
- formal verification;
- proof completeness;
- physical-energy identity tracking;
- legal authority;
- universal jurisdiction;
- global energy interoperability; or
- a complete renewable-energy ontology.

These remain outside the claims of EMAH-ARCH-00/01.

---

## 7. Current Gate

The following surfaces remain closed:

**EMAH-ARCH-02 — Inherited ORYNTH Architecture**

**EMAH-ARCH-03 — Canonical Object System**

**EMAH-ARCH-04 — Multi-Dimensional State Model**

**EMAH-ARCH-05 — Energy Lifecycle and Transition Registry**

No later layer may be treated as admitted from the existence of this document.

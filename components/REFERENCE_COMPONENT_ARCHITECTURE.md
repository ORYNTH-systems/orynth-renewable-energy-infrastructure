# EMAH — Reference Component Architecture

## Status

**EMAH-ARCH-15-P01 / CANDIDATE**

ARCH-15 defines a reference component architecture corresponding to the
accepted EMAH / AHME semantic architecture.

Reference components are architectural implementation surfaces.

Their existence does not establish conformance.

---

# 1. Governing Distinctions

**Reference Component Exists != Component Conforms**

**Component Conforms != Invariant Enforced**

**Invariant Enforced != Proof Obligation Discharged**

**Component Mapping != Runtime Enforcement**

**Component Presence != System Correctness**

---

# 2. Component Purpose

A reference component may:

- consume accepted EMAH objects;
- evaluate accepted state;
- enforce or support a bounded gate;
- record execution or effect;
- evaluate recovery;
- preserve evidence;
- support obligation handling;
- bind external interfaces;
- expose data for verification.

It does not gain semantic authority beyond its admitted role.

---

# 3. Candidate Reference Component Form

A reference component may be represented as:

`RC = (id, name, role, owned_semantics, consumed_semantics, produced_artifacts, invariant_refs, external_dependencies, status)`

where:

- `id` uniquely identifies the reference component;
- `name` is the component name;
- `role` defines the bounded architecture function;
- `owned_semantics` identifies EMAH/AHME semantics implemented by the component;
- `consumed_semantics` identifies upstream dependencies;
- `produced_artifacts` identifies records/results produced;
- `invariant_refs` identifies invariants the component may support;
- `external_dependencies` identifies non-EMAH owners;
- `status` records component-admission state.

---

# 4. Reference Component Status

All ARCH-15-P01 components begin:

**DEFINED**

This means the component role has been architecturally specified.

It does not mean:

- implemented;
- conformant;
- tested;
- verified;
- deployed;
- runtime-enforcing;
- production-ready.

---

# 5. Reference Components

ARCH-15 admits the following reference component families:

1. State Canonicalizer
2. Authority Binding Adapter
3. Admissibility / Reconciliation Adapter
4. Transition Gate Evaluator
5. Execution Boundary Controller
6. Physical Effect Evaluator
7. Residual Classifier
8. AHME Recoverability Evaluator
9. AHME Recovery / Return Coordinator
10. Evidence / Provenance Recorder
11. Obligation Evaluator
12. Cross-Domain Interface Adapter
13. Proof / Threat Traceability Surface
14. Continuity / Lineage Recorder

---

# 6. External Semantic Ownership

Reference components may consume external semantics.

They SHALL NOT silently own those semantics.

Therefore:

**Adapter != External Semantic Owner**

External ownership remains preserved for:

- UAA;
- AOMS;
- EIP;
- IPT;
- Proof of Block;
- Financial Infrastructure / UES;
- Assurance / Evidence surfaces.

---

# 7. No Self-Authorization

No component may create execution authority merely because it:

- issued a command;
- recorded evidence;
- observed state;
- detected an obligation;
- detected a threat;
- detected a residual;
- performed reconciliation.

Therefore:

**Component Capability != Component Authority**

---

# 8. Proof Boundary

A component may support discharge of a proof obligation.

Its presence does not discharge that obligation.

Therefore:

**Reference Implementation != Proof**

and:

**Component Test Pass != Proof Obligation Discharged**

All ARCH-13 primary proof obligations remain OPEN.

---

# 9. Threat Boundary

A reference component may mitigate or expose a threat class.

Component existence does not establish that the threat is mitigated.

Therefore:

**Mitigation Component Exists != Threat Mitigated**

---

# 10. Runtime Boundary

Static component structure does not establish runtime enforcement.

Therefore:

**Static Component Mapping != Runtime Enforcement**

---

# 11. Forward Boundary

Simulation architecture remains reserved for:

**EMAH-ARCH-16 — Simulation Architecture**


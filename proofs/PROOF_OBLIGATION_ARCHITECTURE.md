# EMAH — Proof Obligation Architecture

## Status

**EMAH-ARCH-13-P01 / CANDIDATE**

ARCH-13 derives explicit proof obligations from the accepted ARCH-12
invariant corpus.

It does not claim that any obligation is already discharged.

---

# 1. Governing Distinctions

**Invariant Exists != Invariant Proven**

**Proof Obligation Defined != Proof Obligation Discharged**

**Evidence Exists != Proof Discharged**

**Test Pass != Formal Proof by default**

**Bounded Proof != Global Proof**

---

# 2. Derivation Rule

Every accepted ARCH-12 invariant SHALL map to at least one proof obligation.

No accepted invariant may be silently omitted.

An invariant may later require multiple proof obligations where its semantics
cannot be defensibly discharged by one obligation.

P01 establishes one primary obligation per invariant as the minimum traceable
proof architecture.

---

# 3. Candidate Proof Obligation Form

A proof obligation may be represented as:

`PO = (id, invariant_ref, proposition, scope, admissible_discharge_modes, required_artifacts, status)`

where:

- `id` uniquely identifies the proof obligation;
- `invariant_ref` identifies the accepted source invariant;
- `proposition` states what must be demonstrated;
- `scope` defines the bounded domain of the claim;
- `admissible_discharge_modes` identifies candidate valid proof methods;
- `required_artifacts` identifies evidence or formal artifacts required;
- `status` records proof-obligation state.

---

# 4. Initial Status Rule

Every proof obligation created by ARCH-13-P01 begins:

**OPEN**

No obligation may begin as:

- PROVEN;
- DISCHARGED;
- SATISFIED;
- VERIFIED;
- PASS;
- COMPLETE.

---

# 5. Proof Obligation Status Vocabulary

Candidate statuses:

- `OPEN`
- `IN_ANALYSIS`
- `BLOCKED`
- `PARTIALLY_DISCHARGED`
- `DISCHARGED`
- `FAILED`
- `INDETERMINATE`
- `WITHDRAWN`

Only later admitted proof work may change an obligation from OPEN.

---

# 6. Discharge Mode Boundary

Candidate discharge modes may include, depending on the obligation:

- formal proof;
- model checking;
- exhaustive finite-state analysis;
- static verification;
- bounded property testing;
- runtime enforcement demonstration;
- adversarial test evidence;
- trace reconstruction;
- interface conformance inspection;
- independently reproducible verification.

No discharge mode is universally sufficient.

---

# 7. Proof Scope

Every proof claim must preserve declared scope.

Therefore:

**Proof Within Scope != Global Proof**

A proof obligation discharged for one:

- transition class;
- object type;
- implementation;
- runtime profile;
- deployment boundary;
- jurisdictional context;
- observation boundary;

does not silently generalize beyond that scope.

---

# 8. Evidence Boundary

Evidence may support discharge.

Evidence does not become proof merely by existing.

Therefore:

**Evidence != Proof**

and:

**Audit Record != Formal Proof**

---

# 9. Test Boundary

Testing may discharge a bounded empirical obligation only where the accepted
proof profile explicitly permits such discharge.

Therefore:

**Test Success != Universal Correctness**

---

# 10. Failure Semantics

A failed proof attempt SHALL NOT be rewritten as proof incompleteness without
preserving the failure.

A proof obligation may remain OPEN or become FAILED / INDETERMINATE depending
on the actual result.

---

# 11. No Architectural Mutation

ARCH-13 proof obligations may expose defects in accepted architecture.

They may not silently rewrite the source invariant.

Therefore:

**Proof Difficulty != Permission to Weaken Invariant**

Any required invariant amendment must occur through an explicit architecture
revision.

---

# 12. Forward Boundary

Threat / failure taxonomy remains reserved for:

**EMAH-ARCH-14 — Threat / Failure Taxonomy**

ARCH-13 defines proof obligations only.


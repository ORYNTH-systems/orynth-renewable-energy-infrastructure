# EMAH — Invariant Architecture

## Status

**EMAH-ARCH-12-P01 / CANDIDATE**

ARCH-12 extracts invariants from the accepted EMAH / AHME architecture.

It does not introduce new canonical objects or external semantic ownership.

---

# 1. Governing Distinction

**Invariant != Proof**

An invariant states a condition that must not be violated.

A proof obligation states what must be demonstrated to establish that
condition under a declared scope.

Proof obligations remain reserved for ARCH-13.

---

# 2. Invariant Scope

An EMAH invariant may constrain:

- authority;
- admissibility;
- execution;
- effect;
- physical state;
- recovery;
- continuity;
- evidence;
- provenance;
- obligation;
- financial interface;
- cross-domain ownership.

---

# 3. Invariant Form

A candidate invariant record may be represented as:

`INV = (id, family, statement, scope, source_architecture, violation_class, status)`

where:

- `id` uniquely identifies the invariant;
- `family` identifies its architectural family;
- `statement` is the non-negotiable rule;
- `scope` identifies where the rule applies;
- `source_architecture` identifies accepted architectural basis;
- `violation_class` identifies the kind of breach represented;
- `status` records invariant admission state.

---

# 4. No New Ownership

An invariant may preserve an ownership boundary.

It may not create one.

Therefore:

**Invariant Reference != Ownership Transfer**

---

# 5. No Proof Claim

ARCH-12 does not claim that any invariant has been formally proven.

Therefore:

**Invariant Admission != Formal Verification**

**Invariant Admission != Proof Completeness**

---

# 6. Forward Boundary

ARCH-13 may derive proof obligations from accepted invariants.

ARCH-12 itself stops at invariant definition and registry.


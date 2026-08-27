# EMAH — Simulation State Model

## Status

**EMAH-ARCH-16 / ACCEPTED**

Simulation state references accepted EMAH state semantics.

It does not create a second canonical state ontology.

---

# 1. Governing Rule

**Simulation State != Canonical State Ownership**

The accepted EMAH state model remains canonical.

---

# 2. State Snapshot

A simulation state snapshot may contain:

`Sigma_sim(E) = (P, A, D, C, F, V, R, H, K)`

using accepted EMAH coordinates.

Simulation may additionally record simulator metadata such as:

- run identifier;
- scenario identifier;
- simulation clock;
- injected condition references;
- component-model versions.

These metadata are not EMAH state dimensions.

---

# 3. Initial State

Every scenario SHALL declare its initial state.

Unspecified required state SHALL remain unresolved.

Therefore:

**Unspecified State != Safe Default**

---

# 4. State Mutation

Simulation state changes must occur through explicit scenario events,
modeled transitions, or injected failures.

Therefore:

**Hidden State Mutation != Admissible Simulation Transition**

---

# 5. Branching

A simulation may branch from a common state snapshot.

Each branch must preserve its own lineage.

Therefore:

**Simulation Branch != Shared Outcome**



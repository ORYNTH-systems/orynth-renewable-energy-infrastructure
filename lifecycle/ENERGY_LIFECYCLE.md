# EMAH — Energy Lifecycle

## Status

**EMAH-ARCH-05 / ACCEPTED ENERGY LIFECYCLE**

This document defines the candidate structural lifecycle and transition
grammar for EMAH.

ARCH-05 determines which state changes may exist as EMAH transition
relationships.

It does not independently establish:

- authority to cause a transition;
- current admissibility of a transition;
- present execution eligibility;
- execution success;
- consequential effect;
- economic settlement;
- evidence sufficiency;
- proof discharge.

---

# 1. Governing Transition Distinction

A transition is a typed relationship between a source state and target state.

The existence of that relationship does not mean that a specific actor,
asset, command, or runtime may execute it.

Therefore:

**Transition Defined != Transition Authorized**

**Transition Authorized != Transition Admissible**

**Transition Admissible != Present Execution Eligibility**

**Present Execution Eligibility != Execution**

**Execution != Consequential Effect**

**Consequential Physical Effect != Economic Settlement**

ARCH-05 defines structural transition space.

Later architecture governs whether a particular transition instance
may be executed.

---

# 2. State / Transition Separation

ARCH-04 established:

`Σ(E) = (P, A, D, C, F, V, R, H, K)`

ARCH-05 preserves that state vector.

A transition is not another state coordinate.

Therefore:

**State Vector != Transition**

**State Value != Transition Permission**

**Observed State Change != Authorized Transition**

---

# 3. Candidate Transition Form

A candidate EMAH transition is represented as:

`τ = (id, object_scope, dimension, source, target, class, constraints, status)`

where:

- `id` = canonical transition identifier;
- `object_scope` = canonical object types to which the edge may apply;
- `dimension` = affected state dimension;
- `source` = required source state;
- `target` = candidate target state;
- `class` = transition semantic class;
- `constraints` = structural limitations;
- `status` = architectural admission status.

This tuple does not contain generic authority or admissibility semantics.

Those bindings occur in later architecture.

---

# 4. Single-Dimension Mutation Rule

P01 admits only single-dimension structural transitions.

A transition identified as operating in the Physical State dimension
may change `P`.

It may not silently change:

- `A`;
- `D`;
- `C`;
- `F`;
- `V`;
- `R`;
- `H`;
- `K`.

Any other coordinate must remain unchanged or be independently
re-evaluated by its semantic owner.

Therefore:

**Physical Transition != Authority Transition**

and:

**Physical Transition != Settlement Transition**

---

# 5. Core Physical Lifecycle

The candidate physical lifecycle is non-linear.

Its major structural regions are:

1. energetic potential;
2. physical realization;
3. physical availability;
4. storage or active availability;
5. transfer / flow;
6. delivery or curtailment;
7. impairment, loss, depletion, or residual condition;
8. later recovery / regenerative handling where applicable.

This sequence is not a claim that every energy object must traverse
every region.

---

# 6. Generation / Realization

Candidate structural progression:

`PHY_POTENTIAL`
→
`PHY_PRESENT`

This represents physical energetic realization under the object's
declared measurement boundary.

It does not establish renewable qualification.

It does not establish authority.

---

# 7. Availability

A physically present energy object may become classified as:

`PHY_AVAILABLE`

or:

`PHY_UNAVAILABLE`

Availability is physical state only.

Therefore:

**PHY_AVAILABLE != ADM_ADMISSIBLE**

**PHY_AVAILABLE != AUTH_VALID**

---

# 8. Storage

Available energy may structurally enter storage representation:

`PHY_AVAILABLE`
→
`PHY_STORED`

Stored energy may structurally return to physical availability:

`PHY_STORED`
→
`PHY_AVAILABLE`

Neither edge establishes authority to charge, store, discharge, or export.

---

# 9. Transfer / Flow

Available energy may structurally enter active flow:

`PHY_AVAILABLE`
→
`PHY_FLOWING`

Flowing energy may become physically observed as delivered:

`PHY_FLOWING`
→
`PHY_DELIVERED`

Delivery is a physical observation state.

It is not settlement.

---

# 10. Curtailment

Flow may become curtailed:

`PHY_FLOWING`
→
`PHY_CURTAILED`

A curtailed physical condition may later return to availability:

`PHY_CURTAILED`
→
`PHY_AVAILABLE`

The second edge does not by itself authorize renewed dispatch.

---

# 11. Conversion

ARCH-05 recognizes conversion as a physical lifecycle concern.

Candidate same-object structural edges are:

`PHY_AVAILABLE`
→
`PHY_CONVERTING`

and:

`PHY_CONVERTING`
→
`PHY_AVAILABLE`

These edges apply only where the declared object identity remains valid
across the conversion representation.

Carrier-changing conversion that requires distinct input and output
energy objects is not silently represented as same-object continuity.

That case requires explicit object-relation semantics in later architecture.

Therefore:

**Conversion != Persistent Identity**

---

# 12. Impairment

Physical energy representations may enter impaired state from:

- `PHY_PRESENT`;
- `PHY_AVAILABLE`;
- `PHY_STORED`;
- `PHY_FLOWING`.

Impairment may structurally result in physical unavailability.

Impairment does not automatically mean:

- loss;
- depletion;
- nonrecoverability;
- invalid authority;
- inadmissibility.

---

# 13. Loss and Depletion

The lifecycle recognizes loss and depletion as distinct physical conditions.

Candidate edges include:

`PHY_FLOWING`
→
`PHY_LOST`

and:

`PHY_STORED`
→
`PHY_DEPLETED`

Loss and depletion are not assumed reversible.

No direct return edge from `PHY_LOST` or `PHY_DEPLETED` to
`PHY_AVAILABLE` is admitted in P01.

---

# 14. Residual Handoff

An admitted physical object may become classified as residual where
the declared process leaves a bounded remainder:

`PHY_PRESENT`
→
`PHY_RESIDUAL`

This transition establishes only physical residual condition.

It does not establish:

- recoverability;
- recovery eligibility;
- requalification;
- reintegration;
- renewed availability.

AHME recovery transition semantics remain reserved for:

**EMAH-ARCH-08**

---

# 15. Deferred Transition Dimensions

ARCH-05 intentionally does not define generic transition edges for every
ARCH-04 dimension.

## Authority-Reference State

Transition semantics remain owned upstream and are bound in:

**EMAH-ARCH-06**

EMAH does not create:

`AUTH_INVALID -> AUTH_VALID`

or any equivalent generic authority transition.

---

## Admissibility-Reference State

Current admissibility transition semantics remain bound through UAA/AOMS
and are addressed in:

**EMAH-ARCH-06**

---

## Control State

Consequential command and execution-boundary transition semantics are
reserved for:

**EMAH-ARCH-07**

---

## Economic-Reference State

Economic transition semantics remain owned by Financial Infrastructure /
UES.

EMAH may reference economic state but does not redefine settlement
transitions.

---

## Evidentiary State

Evidence/provenance transition architecture is reserved for:

**EMAH-ARCH-09**

---

## Environmental-Attribute State

Qualification and attribute transition semantics remain reserved for
the later qualification/evidence architecture rather than being inferred
from physical transitions.

---

## Recovery State

AHME recovery and regenerative-return transitions are reserved for:

**EMAH-ARCH-08**

---

## Continuity State

Continuity changes may be observed during the lifecycle, but ARCH-05
does not yet canonize a complete continuity-transition graph.

Continuity semantics must remain reconciled with EIP and IPT boundaries.

---

# 16. Transition Legality Classes

ARCH-05 introduces four architectural classes:

### STRUCTURALLY_DEFINED

A source/target edge exists in the candidate EMAH lifecycle.

### STRUCTURALLY_PROHIBITED

The edge is explicitly excluded because it bypasses a required structural
boundary or collapses distinct semantics.

### DEFERRED

The edge belongs to a later EMAH pass or upstream semantic owner.

### UNRESOLVED

Architecture has not yet established whether the edge should exist.

These classes do not represent execution outcomes.

---

# 17. No Implied Cross-Dimensional Mutation

The following are not EMAH transitions:

`PHY_AVAILABLE -> AUTH_VALID`

`AUTH_VALID -> ADM_ADMISSIBLE`

`CTL_COMMAND_PRESENT -> PHY_DELIVERED`

`PHY_DELIVERED -> ECO_SETTLED`

`EVD_PRESENT -> AUTH_VALID`

`ATR_SUPPORTED -> PHY_AVAILABLE`

`REC_RECOVERED -> AUTH_VALID`

They cross semantic dimensions and falsely imply causation.

Where such state changes coexist, each state must be independently
established.

---

# 18. Forward Boundary

ARCH-05 defines lifecycle and transition structure only.

It does not yet define the complete authority/admissibility gate for a
specific transition instance.

That architecture belongs to:

**EMAH-ARCH-06 — Authority + Admissibility Architecture**

ARCH-05 acceptance shall not pre-accept ARCH-06 findings.



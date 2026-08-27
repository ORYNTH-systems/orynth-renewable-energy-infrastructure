# EMAH — Transition Preconditions

## Status

**EMAH-ARCH-05 / ACCEPTED STRUCTURAL PRECONDITIONS**

These are structural preconditions only.

They do not replace UAA authority or AOMS admissibility evaluation.

---

# P01 — Object Scope

The governed object must belong to the transition's declared object scope.

A transition registered for `EnergyQuantity` may not silently operate on
a different canonical object class.

---

# P02 — Source State

The affected state dimension must equal the transition's registered
source state immediately before the proposed transition.

Historical source state is insufficient.

---

# P03 — Dimensional Identity

The transition may modify only its declared dimension unless a later
architecture explicitly admits a composite transition.

P01 admits no composite transitions.

---

# P04 — Carrier Compatibility

Where physical identity depends upon carrier semantics, the transition
must preserve the carrier-specific identity boundary.

`EnergyBatch` transitions remain carrier-conditional.

---

# P05 — Conversion Identity

For:

- EMAH-TR-PHY-011
- EMAH-TR-PHY-012

the same-object transition is structurally applicable only if the
declared identity basis remains valid through conversion.

Carrier-changing input/output transformation may require separate
energy objects.

---

# P06 — Current-State Requirement

A structural transition shall not rely solely on historical state where
current physical condition is material.

This requirement does not redefine AOMS current-state reconciliation.

---

# P07 — Authority Binding Reserved

A consequential transition may later require a valid upstream
AuthorityReference.

ARCH-05 does not determine that authority rule.

It is reserved for EMAH-ARCH-06.

---

# P08 — Admissibility Binding Reserved

A consequential transition may later require current admissibility.

ARCH-05 does not determine generic admissibility.

It is reserved for EMAH-ARCH-06.

---

# P09 — Control / Execution Binding Reserved

The existence of a structural transition does not mean a control interface
may execute it.

Command and effectuation semantics remain reserved for EMAH-ARCH-07.

---

# P10 — Evidence Binding Reserved

ARCH-05 does not establish the complete evidence package necessary to
prove a transition.

Evidence and provenance architecture remain reserved for EMAH-ARCH-09.

---

# P11 — Financial Non-Substitution

Economic state shall not substitute for a physical transition precondition.

`ECO_SETTLED` cannot establish `PHY_DELIVERED`.

---

# P12 — Attribute Non-Substitution

Environmental or renewable attribute state shall not substitute for
physical state.

`ATR_SUPPORTED` cannot establish `PHY_AVAILABLE`.

---

# P13 — Recovery Non-Substitution

Recovery state shall not silently create physical availability.

Any AHME return path remains subject to EMAH-ARCH-08 and subsequent
admission architecture.



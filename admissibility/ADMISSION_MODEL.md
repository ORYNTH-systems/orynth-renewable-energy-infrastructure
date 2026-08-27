# EMAH — Transition Admissibility Model

## Status

**EMAH-ARCH-06 / ACCEPTED ADMISSIBILITY MODEL**

This record defines EMAH's binding to current transition admissibility.

It consumes UAA and AOMS semantics.

It does not redefine generic admissibility.

---

# 1. Governing Distinction

A transition may be structurally defined and properly authorized while
still being inadmissible now.

Therefore:

**Structurally Defined != Authorized**

**Authorized != Currently Admissible**

**Currently Admissible != Present Execution Eligibility**

**Present Execution Eligibility != Execution**

---

# 2. Current-State Requirement

Admissibility must be evaluated against current relevant state.

Historical admissibility is insufficient.

The current EMAH state vector is:

`Σ(E) = (P, A, D, C, F, V, R, H, K)`

ARCH-06 does not require every coordinate to determine every transition.

It requires only that material state dimensions not be silently ignored.

---

# 3. AOMS Relationship

AOMS owns current-state reconciliation between previously authorized
state and present execution conditions.

EMAH binds energy-domain state into that reconciliation.

Therefore:

**Prior Authorization != Present Execution Eligibility**

and:

**Historical Admissibility != Current Admissibility**

---

# 4. Candidate Admission Result

A governed transition instance may receive one of the following
EMAH admission-reference results:

- `ADMISSION_UNRESOLVED`
- `ADMISSION_RECONCILIATION_REQUIRED`
- `ADMISSION_ADMISSIBLE`
- `ADMISSION_CONDITIONALLY_ADMISSIBLE`
- `ADMISSION_INADMISSIBLE`
- `ADMISSION_INDETERMINATE`
- `ADMISSION_STALE`

These are ARCH-06 decision-record values.

They do not replace the accepted ARCH-04 `ADM_*` state vocabulary.

The ARCH-04 state coordinate records the resulting admissibility condition.

---

# 5. Candidate Admission Inputs

A transition-admission evaluation may require:

- transition identity;
- current physical state;
- authority-reference state;
- current control condition where material;
- object identity and scope;
- carrier compatibility;
- reserve designation where material;
- environmental qualification where material;
- recovery condition where material;
- continuity condition where material;
- current upstream authority result;
- current-state reconciliation result;
- transition-specific structural preconditions.

This list is architectural.

It is not yet a formal executable algorithm.

---

# 6. Non-Substitution Rules

No one input may substitute for the entire admission determination.

Therefore:

**AUTH_VALID != ADM_ADMISSIBLE**

**PHY_AVAILABLE != ADM_ADMISSIBLE**

**CTL_COMMAND_CAPABLE != ADM_ADMISSIBLE**

**ECO_SETTLED != ADM_ADMISSIBLE**

**EVD_PRESENT != ADM_ADMISSIBLE**

**ATR_SUPPORTED != ADM_ADMISSIBLE**

---

# 7. Fail-Closed / Unresolved Handling

Where a material admission condition cannot be defensibly determined,
the system shall not silently convert uncertainty into admissibility.

Therefore:

**Unknown != Admissible**

**Indeterminate != Admissible**

**Stale != Current**

An unresolved admission state cannot independently authorize
consequential execution.

---

# 8. Transition-Specific Admission

Admissibility is transition-specific.

A resource admissible for one action may be inadmissible for another.

Examples:

- admissible to store;
- inadmissible to discharge;
- admissible to observe;
- inadmissible to export;
- admissible to curtail;
- inadmissible to transfer.

Therefore:

**Resource Admissibility != Universal Action Admissibility**

---

# 9. Physical / Economic Separation

Economic condition may be relevant to a transition without becoming
physical admissibility.

Similarly, physical availability does not determine financial legitimacy.

Therefore:

**Physical Admissibility != Financial Settlement**

---

# 10. Environmental Attribute Separation

Renewable or environmental qualification may be a material admission
condition for a specific transition.

It does not establish physical identity or authority.

---

# 11. Recovery Separation

Recovered or residual state may affect admission.

However:

**REC_RECOVERED != ADM_ADMISSIBLE**

**REC_REQUALIFIED != AUTH_VALID**

**REC_REINTEGRATED != Execution Authority**

AHME's detailed recovery transition semantics remain reserved for ARCH-08.

---

# 12. Forward Boundary

ARCH-06 establishes authority/admissibility binding only.

It does not establish how commands are issued, blocked, executed, aborted,
or reconciled against consequential physical effect.

Those semantics remain reserved for:

**EMAH-ARCH-07 — Consequential Execution + Partial Effect**



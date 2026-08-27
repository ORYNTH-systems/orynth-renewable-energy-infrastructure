# AHME — Recoverability Model

## Status

**EMAH-ARCH-08-P01 / CANDIDATE**

Recoverability is a state determination, not a new canonical object identity.

---

# 1. Governing State

ARCH-04 defines:

- `REC_RECOVERABILITY_UNKNOWN`
- `REC_RECOVERABLE`
- `REC_NONRECOVERABLE`

These remain state values.

---

# 2. Recoverability Determination

A residual may be classified recoverable only under a declared recovery
boundary.

Candidate factors may include:

- carrier;
- residual magnitude;
- physical condition;
- infrastructure compatibility;
- conversion feasibility;
- storage compatibility;
- degradation;
- continuity;
- safety constraints;
- environmental qualification where material;
- temporal constraints.

---

# 3. Recoverability Is Not Recovery

Therefore:

**REC_RECOVERABLE != REC_RECOVERED**

**Recoverability Determination != Recovery Execution**

---

# 4. Unknown Handling

If recoverability cannot be defensibly established:

`REC_RECOVERABILITY_UNKNOWN`

must remain explicit.

Therefore:

**Unknown Recoverability != Recoverable**

---

# 5. IPT Boundary

IPT may contribute recoverability-relevant evaluation.

AHME does not reinterpret IPT evaluation as automatic recovery permission.

Therefore:

**IPT Recoverability != AHME Recovery Admission**


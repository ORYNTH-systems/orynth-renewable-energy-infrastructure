# EMAH — Obligation Lifecycle

## Status

**EMAH-ARCH-10-P01 / CANDIDATE**

This document defines obligation status vocabulary.

It does not create execution authority.

---

# 1. Candidate Statuses

- `OBL_UNRESOLVED`
- `OBL_OPEN`
- `OBL_CONDITION_PENDING`
- `OBL_PARTIALLY_SATISFIED`
- `OBL_SATISFIED`
- `OBL_UNSATISFIED`
- `OBL_BLOCKED_FROM_SATISFACTION`
- `OBL_DISPUTED`
- `OBL_SUPERSEDED`
- `OBL_EXPIRED`
- `OBL_CLOSED_WITH_RESIDUAL`
- `OBL_INDETERMINATE`

---

# 2. Governing Rule

Obligation status does not create execution permission.

Therefore:

**OBL_OPEN != AUTH_VALID**

**OBL_OPEN != ADM_ADMISSIBLE**

---

# 3. Partial Satisfaction

An obligation may be partially satisfied.

Therefore:

**Partial Satisfaction != Full Satisfaction**

Remaining obligation must remain explicitly represented.

---

# 4. Blocked Satisfaction

An obligation may remain valid while execution necessary to satisfy it is
blocked or inadmissible.

Therefore:

**Obligation Exists != Satisfaction Action Admissible**

---

# 5. Supersession

Supersession must be explicit.

A later obligation does not silently erase an earlier one.

Therefore:

**Replacement Obligation != Historical Erasure**

---

# 6. Closure With Residual

An obligation may close with a declared residual or unresolved remainder only
where the architecture explicitly permits that status.

Closure does not mean the residual never existed.


# EMAH — Component Interaction Model

## Status

**EMAH-ARCH-15-P01 / CANDIDATE**

Reference components may compose into a runtime chain.

Composition does not erase semantic boundaries.

---

# 1. Candidate Chain

A governed EMAH transition may involve:

`State -> Authority -> Admissibility -> Gate -> Execution -> Effect -> Evidence -> Recovery / Obligation`

This chain is conceptual and may contain additional interface stages.

---

# 2. Non-Collapse Rule

The following remain distinct across component interaction:

**State != Authority**

**Authority != Admissibility**

**Admissibility != Execution**

**Execution != Effect**

**Effect != Settlement**

**Evidence != Authority**

**Recovery != Restoration**

---

# 3. Message / Artifact Boundary

A component output may become another component's input.

That does not mean the downstream component inherits the upstream component's
authority.

Therefore:

**Artifact Propagation != Authority Propagation**

---

# 4. Failure Propagation

Failure must remain explicit across component boundaries.

A downstream PASS SHALL NOT silently erase an upstream BLOCKED, FAILED,
INDETERMINATE, or unresolved state.

Therefore:

**Downstream Success != Upstream Failure Erasure**


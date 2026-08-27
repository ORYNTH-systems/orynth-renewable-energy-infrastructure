# EMAH — Current-State Reconciliation

## Status

**EMAH-ARCH-06-P01 / CANDIDATE**

## Purpose

Bind EMAH's accepted state architecture to upstream AOMS-style
current-state reconciliation without redefining AOMS.

---

# 1. Reconciliation Pair

A governed transition instance is evaluated against:

`AuthorizedSnapshot`

and:

`CurrentSnapshot`

These are architectural snapshots, not new canonical EMAH objects.

---

# 2. Material Drift Classes

Candidate energy-domain drift classes include:

- physical-state drift;
- authority-state drift;
- admissibility-state drift;
- control-state drift;
- environmental-attribute drift;
- recovery-state drift;
- continuity-state drift;
- object-scope drift;
- carrier or conversion-identity drift.

Economic drift may be referenced where material but remains owned by
Financial Infrastructure / UES.

---

# 3. Drift Rule

A difference between authorized and current state does not automatically
mean inadmissible.

It means reconciliation is required where the difference is material.

Therefore:

**State Drift != Automatic Denial**

and:

**State Drift != Automatic Admission**

---

# 4. Materiality

Only state differences relevant to the proposed transition should
participate in the transition-specific reconciliation result.

No coordinate may be silently treated as globally controlling.

---

# 5. Temporal Rule

A prior valid determination cannot be treated as current merely because
no contrary event has been recorded.

Therefore:

**No Revocation Record != Proof of Current Validity**

---

# 6. Reconciliation Output

The candidate reconciliation result is one of:

- `RECONCILED_NO_MATERIAL_DRIFT`
- `RECONCILED_MATERIAL_DRIFT_ACCEPTABLE`
- `RECONCILED_MATERIAL_DRIFT_BLOCKING`
- `RECONCILIATION_INDETERMINATE`
- `RECONCILIATION_STALE`

These values inform the EMAH admission reference.

They are not execution verdicts.

---

# 7. Forward Boundary

Reconciliation does not itself execute or block a physical command.

Execution-boundary enforcement remains reserved for ARCH-07 and upstream
UAA semantics.


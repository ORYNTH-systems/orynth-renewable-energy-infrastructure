# EMAH — Physical Effect Model

## Status

**EMAH-ARCH-07 / ACCEPTED PHYSICAL EFFECT MODEL**

---

# 1. Intended Effect

Let:

`I`

represent the intended consequential physical energy effect.

`I` must be interpreted under declared physical dimensions.

Examples may include:

- intended energy quantity;
- intended flow quantity;
- intended charge amount;
- intended discharge amount;
- intended curtailment amount;
- intended conversion output;
- intended transfer quantity.

---

# 2. Observed Effect

Let:

`O`

represent the observed consequential physical energy effect.

Observation must remain distinct from command and execution records.

Therefore:

**I != O by default**

and:

**Execution Completed != O = I**

---

# 3. Effect Classes

For scalar non-negative comparable effects:

### No Observed Effect

`O = 0`

### Partial Physical Effect

`0 < O < I`

### Full Observed Effect

`O = I`

### Over-Effect

`O > I`

Over-effect is explicitly represented because a consequential system may
produce more physical effect than intended.

Therefore the effect model is not limited to under-delivery.

---

# 4. Effect Mismatch

Any condition:

`O != I`

is an effect mismatch.

Effect mismatch does not independently determine:

- cause;
- fault;
- liability;
- settlement;
- compensation;
- recovery.

---

# 5. Multi-Dimensional Effects

Not every physical effect is safely represented by one scalar.

A physical effect may eventually require a vector:

`I_vec = (i1, i2, ..., in)`

`O_vec = (o1, o2, ..., on)`

Candidate dimensions may include:

- quantity;
- rate;
- duration;
- direction;
- location/interface;
- carrier;
- quality;
- temporal window.

A transition may therefore be full on one dimension and partial on another.

---

# 6. Observation Boundary

Every effect comparison must declare:

- measurement boundary;
- temporal window;
- physical interface;
- units;
- uncertainty where material.

Without a declared observation boundary, effect comparison may be
indeterminate.

---

# 7. Causation Boundary

Observed physical effect does not automatically prove that the governed
execution caused the effect.

Therefore:

**Observed Effect != Proven Causal Effect**

Causal proof semantics are not fully established in ARCH-07.

---

# 8. Financial Separation

`O = I`

does not imply financial settlement.

`O < I`

does not imply a particular financial partial-settlement result.

Therefore:

**Physical Effect Equality != Settlement Finality**

**Physical Effect Residual != Financial Residual**



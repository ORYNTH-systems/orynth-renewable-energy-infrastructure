# EMAH — Partial Physical Effect Algebra

## Status

**EMAH-ARCH-07 / ACCEPTED PARTIAL PHYSICAL EFFECT ALGEBRA**

---

# 1. Scalar Model

Let:

`I >= 0`

be intended physical effect.

Let:

`O >= 0`

be observed physical effect.

Define signed effect difference:

`delta = I - O`

---

# 2. Under-Effect Residual

For:

`0 <= O < I`

define the remaining intended-but-unrealized physical effect:

`rho_under = I - O`

Therefore:

`rho_under > 0`

---

# 3. Full Effect

For:

`O = I`

then:

`delta = 0`

and:

`rho_under = 0`

This means observed physical effect equals intended physical effect within
the declared comparison boundary.

It does not imply:

- financial settlement finality;
- complete evidence;
- continuity preservation;
- absence of side effects.

---

# 4. No Effect

For:

`O = 0`

and:

`I > 0`

then:

`rho_under = I`

No observed effect is distinct from a pre-execution block unless evidence
establishes that the governed execution never occurred.

Therefore:

**O = 0 != Block**

---

# 5. Partial Effect

For:

`0 < O < I`

then:

`0 < rho_under < I`

This is candidate physical partial-effect classification.

---

# 6. Over-Effect

For:

`O > I`

then:

`delta < 0`

Define excess observed physical effect:

`rho_over = O - I`

where:

`rho_over > 0`

Over-effect must not be represented as a negative under-effect residual
without preserving semantic type.

Therefore:

**Under-Effect Residual != Over-Effect Excess**

---

# 7. Typed Residual

The candidate generalized residual is typed:

`rho = (class, magnitude, dimension, unit, boundary)`

where `class` may include:

- `UNDER_EFFECT`
- `OVER_EFFECT`
- `NO_EFFECT`
- `DIMENSIONAL_MISMATCH`
- `INDETERMINATE`

This prevents one scalar residual from hiding materially different forms
of mismatch.

---

# 8. Vector Model

For multi-dimensional effects:

`I_vec = (i1, i2, ..., in)`

`O_vec = (o1, o2, ..., on)`

define:

`delta_vec = I_vec - O_vec`

only where component dimensions and units are validly comparable.

A vector effect shall not be collapsed into a scalar without an explicit
aggregation rule.

---

# 9. Residual / Recovery Separation

A physical effect residual is not automatically recoverable energy.

Therefore:

**EnergyEffectResidual != EnergyResidual**

**EnergyEffectResidual != REC_RECOVERABLE**

**Physical Residual != AHME Recovery Admission**

ARCH-08 determines recovery semantics.

---

# 10. Financial Separation

Physical effect algebra does not calculate financial settlement.

Therefore:

**rho_under != Financial Compensation Amount**

**rho_over != Financial Liability**

**Physical Partial Effect != Financial Partial Effect**

The Financial Infrastructure interface remains external.



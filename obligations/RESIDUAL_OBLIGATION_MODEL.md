# EMAH — Residual Obligation Model

## Status

**EMAH-ARCH-10 / ACCEPTED**

This model distinguishes obligation remainder from physical-effect and AHME
residuals.

---

# 1. Three Residual Types

ARCH-10 preserves at least three distinct residual concepts:

### Physical Effect Residual

From ARCH-07:

`EnergyEffectResidual`

Represents mismatch between intended and observed physical effect.

### AHME Energy Residual

From ARCH-08:

`EnergyResidual`

Represents a bounded recovery-domain energy residual.

### Obligation Residual

From ARCH-10:

`rho_obl`

Represents an unsatisfied remainder of a bounded obligation.

Therefore:

**EnergyEffectResidual != EnergyResidual**

**EnergyResidual != Obligation Residual**

**EnergyEffectResidual != Obligation Residual**

---

# 2. No Automatic Mapping

A physical effect residual may contribute to an obligation remainder.

An obligation remainder may trigger residual-handling duties.

Neither mapping is automatic.

Therefore:

**Physical Residual != Obligation Residual by default**

---

# 3. Compensation Boundary

An obligation residual is not a financial compensation amount.

Therefore:

**Obligation Residual != Compensation Amount**

---

# 4. Recovery Boundary

A physical recovery may reduce a related obligation remainder where the
declared satisfaction basis permits.

It does not automatically extinguish all associated obligations.

Therefore:

**Recovery Completion != Universal Obligation Satisfaction**



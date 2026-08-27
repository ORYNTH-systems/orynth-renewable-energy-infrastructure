# AHME — Residual Model

## Status

**EMAH-ARCH-08 / ACCEPTED**

---

# 1. EnergyResidual

`EnergyResidual` is the accepted ARCH-03 AHME object representing a bounded
energy-domain remainder, residual quantity, or residual energetic condition.

Residual identity does not determine recoverability.

Therefore:

**EnergyResidual != REC_RECOVERABLE**

---

# 2. Residual Origins

A residual may arise from:

- partial physical effect;
- conversion remainder;
- storage remainder;
- curtailed energetic condition;
- process remainder;
- impaired state;
- incomplete transfer;
- other bounded energy-domain process.

This list does not establish causation by itself.

---

# 3. Residual Lineage

Every AHME residual should preserve references to the relevant prior history,
including where applicable:

- source object;
- transition identity;
- execution attempt;
- execution outcome;
- intended physical effect `I`;
- observed physical effect `O`;
- typed effect residual;
- observation boundary.

---

# 4. Residual / Effect Residual Separation

`EnergyEffectResidual` represents a mismatch between intended and observed
physical effect.

`EnergyResidual` represents an AHME recovery-domain object.

Therefore:

**EnergyEffectResidual != EnergyResidual**

A mapping between them must be explicit where one exists.

---

# 5. Residual / Recoverability Separation

Residual existence establishes only residual condition.

Therefore:

**Residual Present != Recoverable**

**Residual Present != Recovery Eligible**

**Residual Present != Requalified**

**Residual Present != Reintegrated**



# EMAH — Residual Cross-Domain Traceability

## Status

**EMAH-ARCH-17-P02 / CANDIDATE**

This registry preserves the non-collapse of residual semantics.

| Residual Class | Owner / Source | Downstream Role | Must Not Collapse Into | Status |
|---|---|---|---|---|
| EnergyEffectResidual | EMAH ARCH-07 | represents residual between intended and observed physical effect | EnergyResidual; Obligation Residual; Financial Residual | BOUND |
| EnergyResidual | AHME ARCH-08 | energy-domain residual subject to recoverability evaluation | EnergyEffectResidual; Obligation Residual; Financial Residual | BOUND |
| Obligation Residual | EMAH ARCH-10 | unsatisfied remainder of bounded energy-domain obligation | EnergyEffectResidual; EnergyResidual; Financial Residual | BOUND |
| Financial Residual | Financial Infrastructure / external owner | economic/settlement remainder | EnergyEffectResidual; EnergyResidual; Obligation Residual | EXTERNALLY_OWNED |

## Governing Distinctions

**EnergyEffectResidual != EnergyResidual**

**EnergyEffectResidual != Obligation Residual**

**EnergyEffectResidual != Financial Residual**

**EnergyResidual != Obligation Residual**

**EnergyResidual != Financial Residual**

**Obligation Residual != Financial Residual**

## Ownership Boundary

Financial residual semantics remain externally owned by Financial
Infrastructure / UES.

**External Ownership != Orphan**


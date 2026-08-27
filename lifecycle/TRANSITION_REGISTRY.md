# EMAH — Transition Registry

## Status

**EMAH-ARCH-05 / ACCEPTED**

## Governing Rule

A registry entry establishes an accepted structural transition.

It does not establish authority, admissibility, execution eligibility,
or successful effectuation.

| ID | Dimension | Source | Target | Class | Primary Object Scope | Status |
|---|---|---|---|---|---|---|
| EMAH-TR-PHY-001 | PHY | PHY_POTENTIAL | PHY_PRESENT | REALIZATION | EnergyQuantity / EnergyBatch | ACCEPTED |
| EMAH-TR-PHY-002 | PHY | PHY_PRESENT | PHY_AVAILABLE | AVAILABILITY_ESTABLISHMENT | EnergyQuantity / EnergyBatch | ACCEPTED |
| EMAH-TR-PHY-003 | PHY | PHY_PRESENT | PHY_UNAVAILABLE | UNAVAILABILITY_DETERMINATION | EnergyQuantity / EnergyBatch | ACCEPTED |
| EMAH-TR-PHY-004 | PHY | PHY_AVAILABLE | PHY_STORED | STORAGE_ENTRY | EnergyQuantity / EnergyBatch | ACCEPTED |
| EMAH-TR-PHY-005 | PHY | PHY_STORED | PHY_AVAILABLE | STORAGE_RELEASE | EnergyQuantity / EnergyBatch | ACCEPTED |
| EMAH-TR-PHY-006 | PHY | PHY_AVAILABLE | PHY_FLOWING | FLOW_INITIATION | EnergyQuantity / EnergyFlowInterval | ACCEPTED |
| EMAH-TR-PHY-007 | PHY | PHY_FLOWING | PHY_DELIVERED | DELIVERY_OBSERVATION | EnergyFlowInterval / EnergyQuantity | ACCEPTED |
| EMAH-TR-PHY-008 | PHY | PHY_FLOWING | PHY_CURTAILED | CURTAILMENT | EnergyFlowInterval / EnergyQuantity | ACCEPTED |
| EMAH-TR-PHY-009 | PHY | PHY_CURTAILED | PHY_AVAILABLE | CURTAILMENT_RELEASE | EnergyQuantity / EnergyFlowInterval | ACCEPTED |
| EMAH-TR-PHY-010 | PHY | PHY_AVAILABLE | PHY_UNAVAILABLE | AVAILABILITY_WITHDRAWAL | EnergyQuantity / EnergyBatch | ACCEPTED |
| EMAH-TR-PHY-011 | PHY | PHY_AVAILABLE | PHY_CONVERTING | CONVERSION_INITIATION | EnergyQuantity | ACCEPTED / IDENTITY-CONDITIONAL |
| EMAH-TR-PHY-012 | PHY | PHY_CONVERTING | PHY_AVAILABLE | CONVERSION_COMPLETION | EnergyQuantity | ACCEPTED / IDENTITY-CONDITIONAL |
| EMAH-TR-PHY-013 | PHY | PHY_PRESENT | PHY_IMPAIRED | IMPAIRMENT | EnergyQuantity / EnergyBatch | ACCEPTED |
| EMAH-TR-PHY-014 | PHY | PHY_AVAILABLE | PHY_IMPAIRED | IMPAIRMENT | EnergyQuantity / EnergyBatch | ACCEPTED |
| EMAH-TR-PHY-015 | PHY | PHY_STORED | PHY_IMPAIRED | IMPAIRMENT | EnergyQuantity / EnergyBatch | ACCEPTED |
| EMAH-TR-PHY-016 | PHY | PHY_FLOWING | PHY_IMPAIRED | IMPAIRMENT | EnergyFlowInterval / EnergyQuantity | ACCEPTED |
| EMAH-TR-PHY-017 | PHY | PHY_IMPAIRED | PHY_UNAVAILABLE | IMPAIRMENT_CONSEQUENCE | EnergyQuantity / EnergyBatch | ACCEPTED |
| EMAH-TR-PHY-018 | PHY | PHY_FLOWING | PHY_LOST | LOSS_OBSERVATION | EnergyFlowInterval / EnergyQuantity | ACCEPTED |
| EMAH-TR-PHY-019 | PHY | PHY_STORED | PHY_DEPLETED | DEPLETION | EnergyQuantity / EnergyBatch | ACCEPTED |
| EMAH-TR-PHY-020 | PHY | PHY_PRESENT | PHY_RESIDUAL | RESIDUAL_CLASSIFICATION | EnergyQuantity / EnergyBatch | ACCEPTED / AHME-HANDOFF |

## Accepted Count

**20**

## Explicitly Deferred Transition Families

| Dimension | Disposition | Owning / Later Surface |
|---|---|---|
| AUTH | DEFERRED | UAA / EMAH-ARCH-06 |
| ADM | DEFERRED | UAA + AOMS / EMAH-ARCH-06 |
| CTL | DEFERRED | EMAH-ARCH-07 |
| ECO | EXTERNAL / DEFERRED | Financial Infrastructure / UES |
| EVD | DEFERRED | EMAH-ARCH-09 |
| ATR | DEFERRED | Later qualification / evidence architecture |
| REC | DEFERRED | AHME / EMAH-ARCH-08 |
| CON | DEFERRED | EMAH/AHME with EIP/IPT reconciliation |

## Registry Constraint

`CANDIDATE` means structurally proposed.

It does not mean executable.



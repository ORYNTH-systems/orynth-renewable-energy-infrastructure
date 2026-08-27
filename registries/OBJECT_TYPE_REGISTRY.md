# EMAH — Object Type Registry

## Status

**EMAH-ARCH-03 / ACCEPTED**

| ID | Canonical Type | Family | Owner | Status |
|---|---|---|---|---|
| EMAH-DOM-001 | EMAHDomain | DOM | EMAH | ACCEPTED |
| EMAH-DOM-002 | AHMESubdomain | DOM | EMAH/AHME | ACCEPTED |
| EMAH-ENG-001 | EnergySource | ENG | EMAH | ACCEPTED |
| EMAH-ENG-002 | EnergyCarrier | ENG | EMAH | ACCEPTED |
| EMAH-ENG-003 | EnergyQuantity | ENG | EMAH | ACCEPTED |
| EMAH-ENG-004 | EnergyFlowInterval | ENG | EMAH | ACCEPTED |
| EMAH-ENG-005 | EnergyBatch | ENG | EMAH | ACCEPTED / CARRIER-CONDITIONAL |
| EMAH-CAP-001 | EnergyCapacity | CAP | EMAH | ACCEPTED |
| EMAH-CAP-003 | ReserveDesignation | CAP | EMAH | ACCEPTED |
| EMAH-ATR-001 | EnergyAttribute | ATR | EMAH | ACCEPTED |
| EMAH-ATR-002 | RenewableAttribute | ATR | EMAH | ACCEPTED |
| EMAH-ATR-003 | QualificationClaim | ATR | EMAH | ACCEPTED |
| EMAH-INF-001 | EnergyAsset | INF | EMAH | ACCEPTED |
| EMAH-INF-002 | GenerationAsset | INF | EMAH | ACCEPTED |
| EMAH-INF-003 | StorageAsset | INF | EMAH | ACCEPTED |
| EMAH-INF-004 | ConversionAsset | INF | EMAH | ACCEPTED |
| EMAH-INF-005 | TransferInterface | INF | EMAH | ACCEPTED |
| EMAH-INF-006 | EnergyNode | INF | EMAH | ACCEPTED |
| EMAH-INF-007 | LoadAsset | INF | EMAH | ACCEPTED |
| EMAH-INF-008 | MeasurementPoint | INF | EMAH | ACCEPTED |
| EMAH-INF-009 | ControlInterface | INF | EMAH | ACCEPTED |
| EMAH-INF-010 | MicrogridBoundary | INF | EMAH | ACCEPTED |
| EMAH-EFF-001 | IntendedEnergyEffect | EFF | EMAH | ACCEPTED |
| EMAH-EFF-002 | ObservedEnergyEffect | EFF | EMAH | ACCEPTED |
| EMAH-EFF-003 | PartialEnergyEffect | EFF | EMAH | ACCEPTED |
| EMAH-EFF-004 | EnergyEffectResidual | EFF | EMAH | ACCEPTED |
| EMAH-REC-001 | EnergyResidual | REC | AHME | ACCEPTED |
| EMAH-REC-002 | RecoveryProcess | REC | AHME | ACCEPTED |
| EMAH-REC-003 | RegenerativeReturn | REC | AHME | ACCEPTED |
| EMAH-REF-001 | AuthorityReference | REF | EMAH reference / UAA upstream | ACCEPTED |
| EMAH-REF-002 | AdmissibilityReference | REF | EMAH reference / UAA-AOMS upstream | ACCEPTED |
| EMAH-REF-003 | ExecutionContinuityReference | REF | EMAH reference / EIP upstream | ACCEPTED |
| EMAH-REF-004 | ProofOfBlockReference | REF | EMAH reference / PoB upstream | ACCEPTED |
| EMAH-REF-005 | IntegrityAssessmentReference | REF | EMAH reference / IPT upstream | ACCEPTED |
| EMAH-REF-006 | FinancialStateReference | REF | EMAH reference / Financial Infrastructure upstream | ACCEPTED |
| EMAH-REF-007 | SettlementReference | REF | EMAH reference / Financial Infrastructure-UES upstream | ACCEPTED |

## Count

Accepted canonical object types:

**36**

## Removed State-Like Candidate Types

The following P01 candidates were removed from the canonical object registry
because they encode state rather than object identity:

- AvailableEnergyCapacity
- RegeneratedCapacity
- RecoverableEnergy
- RecoveredEnergy
- RequalifiedEnergy
- ReintegratedEnergy

## Reconciliation

`EnergyReserve` was replaced by `ReserveDesignation`.

`RecoveryProcess` was introduced as a genuine AHME process object.

## Restriction

Registry entries in this record are accepted canonical EMAH object types.

No lifecycle state or transition is authorized by this registry.


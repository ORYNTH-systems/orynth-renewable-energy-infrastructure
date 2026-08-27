# EMAH — Object Type Registry

## Status

**EMAH-ARCH-03-P02 / CORRECTED CANDIDATE**

| ID | Canonical Type | Family | Owner | Status |
|---|---|---|---|---|
| EMAH-DOM-001 | EMAHDomain | DOM | EMAH | CANDIDATE |
| EMAH-DOM-002 | AHMESubdomain | DOM | EMAH/AHME | CANDIDATE |
| EMAH-ENG-001 | EnergySource | ENG | EMAH | CANDIDATE |
| EMAH-ENG-002 | EnergyCarrier | ENG | EMAH | CANDIDATE |
| EMAH-ENG-003 | EnergyQuantity | ENG | EMAH | CANDIDATE |
| EMAH-ENG-004 | EnergyFlowInterval | ENG | EMAH | CANDIDATE |
| EMAH-ENG-005 | EnergyBatch | ENG | EMAH | CANDIDATE / CARRIER-CONDITIONAL |
| EMAH-CAP-001 | EnergyCapacity | CAP | EMAH | CANDIDATE |
| EMAH-CAP-003 | ReserveDesignation | CAP | EMAH | CANDIDATE |
| EMAH-ATR-001 | EnergyAttribute | ATR | EMAH | CANDIDATE |
| EMAH-ATR-002 | RenewableAttribute | ATR | EMAH | CANDIDATE |
| EMAH-ATR-003 | QualificationClaim | ATR | EMAH | CANDIDATE |
| EMAH-INF-001 | EnergyAsset | INF | EMAH | CANDIDATE |
| EMAH-INF-002 | GenerationAsset | INF | EMAH | CANDIDATE |
| EMAH-INF-003 | StorageAsset | INF | EMAH | CANDIDATE |
| EMAH-INF-004 | ConversionAsset | INF | EMAH | CANDIDATE |
| EMAH-INF-005 | TransferInterface | INF | EMAH | CANDIDATE |
| EMAH-INF-006 | EnergyNode | INF | EMAH | CANDIDATE |
| EMAH-INF-007 | LoadAsset | INF | EMAH | CANDIDATE |
| EMAH-INF-008 | MeasurementPoint | INF | EMAH | CANDIDATE |
| EMAH-INF-009 | ControlInterface | INF | EMAH | CANDIDATE |
| EMAH-INF-010 | MicrogridBoundary | INF | EMAH | CANDIDATE |
| EMAH-EFF-001 | IntendedEnergyEffect | EFF | EMAH | CANDIDATE |
| EMAH-EFF-002 | ObservedEnergyEffect | EFF | EMAH | CANDIDATE |
| EMAH-EFF-003 | PartialEnergyEffect | EFF | EMAH | CANDIDATE |
| EMAH-EFF-004 | EnergyEffectResidual | EFF | EMAH | CANDIDATE |
| EMAH-REC-001 | EnergyResidual | REC | AHME | CANDIDATE |
| EMAH-REC-002 | RecoveryProcess | REC | AHME | CANDIDATE |
| EMAH-REC-003 | RegenerativeReturn | REC | AHME | CANDIDATE |
| EMAH-REF-001 | AuthorityReference | REF | EMAH reference / UAA upstream | CANDIDATE |
| EMAH-REF-002 | AdmissibilityReference | REF | EMAH reference / UAA-AOMS upstream | CANDIDATE |
| EMAH-REF-003 | ExecutionContinuityReference | REF | EMAH reference / EIP upstream | CANDIDATE |
| EMAH-REF-004 | ProofOfBlockReference | REF | EMAH reference / PoB upstream | CANDIDATE |
| EMAH-REF-005 | IntegrityAssessmentReference | REF | EMAH reference / IPT upstream | CANDIDATE |
| EMAH-REF-006 | FinancialStateReference | REF | EMAH reference / Financial Infrastructure upstream | CANDIDATE |
| EMAH-REF-007 | SettlementReference | REF | EMAH reference / Financial Infrastructure-UES upstream | CANDIDATE |

## Count

Corrected candidate canonical object types:

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

Registry presence does not constitute canonical acceptance.

No object becomes ACCEPTED until EMAH-ARCH-03-P02 review completes.

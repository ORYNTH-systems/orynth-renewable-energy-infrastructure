# EMAH — Canonical Object System

## Status

**EMAH-ARCH-03-P01 / CANDIDATE**

This document defines the candidate canonical object system for EMAH / AHME.

It establishes object categories, identities, domain ownership, and semantic separation.

It does not define lifecycle states, transition rules, authority, admissibility, execution behavior, proofs, or implementation.

---

# 1. Governing Object Rule

An EMAH object answers:

**What kind of thing is being represented?**

It does not independently answer:

- what state the object is in;
- who owns it;
- who controls it;
- who may act upon it;
- whether a transition is admissible;
- whether execution may occur;
- whether an effect occurred;
- whether evidence is sufficient.

Therefore:

**Object Identity != State**

**Object Identity != Authority**

**Object Identity != Admissibility**

**Object Identity != Execution**

**Object Identity != Evidence**

---

# 2. Canonical Object Families

The EMAH object system is organized into the following candidate families:

- DOM — Domain Architecture Objects
- ENG — Energy Objects
- CAP — Capacity Objects
- ATR — Attribute Objects
- INF — Infrastructure Objects
- EFF — Physical Effect Objects
- REC — Recovery / Regenerative Objects
- REF — External Reference Objects

These prefixes classify object types.

They do not establish lifecycle state.

---

# 3. Domain Architecture Objects

## EMAH-DOM-001 — EMAHDomain

Represents the bounded renewable-energy domain governed by EMAH.

Purpose:

- establish domain identity;
- distinguish EMAH-owned semantics from inherited ORYNTH semantics;
- bind future energy-domain objects to a declared EMAH domain.

EMAHDomain does not itself create execution authority.

---

## EMAH-DOM-002 — AHMESubdomain

Represents the regenerative-return domain within EMAH.

AHME governs energy-domain semantics associated with:

- residual energetic condition;
- recoverability;
- recovery;
- requalification;
- reintegration;
- regenerated availability;
- regenerative continuity;
- renewed admission.

AHMESubdomain does not imply that recovered energy is automatically admissible or authorized.

---

# 4. Energy Objects

## EMAH-ENG-001 — EnergySource

Represents the declared physical origin class from which energetic capacity is derived.

Examples may later include:

- solar;
- wind;
- hydro;
- geothermal;
- biomass;
- tidal;
- recovered-energy source;
- other admitted renewable source classes.

EnergySource is a source object.

It is not itself evidence that generated energy qualifies as renewable.

---

## EMAH-ENG-002 — EnergyCarrier

Represents the physical carrier or form in which energetic capacity exists or is transferred.

Candidate examples:

- electricity;
- thermal energy;
- hydrogen;
- chemical fuel;
- mechanical storage medium.

Carrier identity determines which physical identity and continuity claims are meaningful.

---

## EMAH-ENG-003 — EnergyQuantity

Represents a bounded quantitative amount of energy under declared measurement semantics.

An EnergyQuantity must eventually bind to:

- quantity value;
- unit;
- carrier;
- measurement basis;
- observation or accounting interval where applicable.

EnergyQuantity does not imply persistent physical identity.

---

## EMAH-ENG-004 — EnergyFlowInterval

Represents energy transfer or flow bounded by a declared temporal and physical interface interval.

This object is particularly important for electricity.

An EnergyFlowInterval may represent:

- measured flow;
- scheduled flow;
- observed flow;
- delivered flow;

but its eventual state classification is reserved for later passes.

EnergyFlowInterval does not represent persistent identity of individual physical particles.

---

## EMAH-ENG-005 — EnergyBatch

Represents a physically or operationally bounded batch only where the relevant energy carrier supports meaningful batch identity.

EnergyBatch SHALL NOT be used as a universal representation of electricity.

Batch identity requires explicit carrier compatibility.

Therefore:

**EnergyQuantity != EnergyBatch**

and:

**Electricity Flow != Persistent Physical Batch Identity**

---

# 5. Capacity Objects

## EMAH-CAP-001 — EnergyCapacity

Represents bounded capability to generate, store, transfer, convert, absorb, or otherwise physically accommodate energy.

Capacity is not current energy availability.

Therefore:

**Capacity != Available Energy**

---

## EMAH-CAP-002 — AvailableEnergyCapacity

Represents capacity determined to be physically available under a declared observation boundary.

Availability does not imply admission or authority.

Therefore:

**Available Capacity != Admissible Capacity**

---

## EMAH-CAP-003 — EnergyReserve

Represents energetic capacity or quantity encumbered by a declared reserve purpose or obligation.

Reserve status does not independently establish ownership, custody, or execution authority.

A later obligation architecture must determine the nature and enforceability of the reserve relation.

---

## EMAH-CAP-004 — RegeneratedCapacity

Represents energetic capacity made available through a recovery or regenerative process.

RegeneratedCapacity remains subject to requalification and readmission.

Therefore:

**Regenerated Capacity != Automatically Admissible Capacity**

---

# 6. Environmental and Descriptive Attribute Objects

## EMAH-ATR-001 — EnergyAttribute

Represents a declared descriptive, accounting, environmental, contractual, or provenance-related attribute associated with an energy object or event.

An EnergyAttribute may describe an energy object.

It does not become the physical energy object.

---

## EMAH-ATR-002 — RenewableAttribute

Represents an attribute asserting or recording renewable-source relevance under a declared qualification basis.

RenewableAttribute does not constitute persistent physical identity.

Therefore:

**RenewableAttribute != Physical Energy Identity**

---

## EMAH-ATR-003 — QualificationClaim

Represents a claim that an energy object satisfies a declared qualification criterion.

QualificationClaim is a claim object.

It is not automatically a valid qualification result.

Evidence and qualification semantics are reserved for later architecture.

---

# 7. Infrastructure Objects

## EMAH-INF-001 — EnergyAsset

Abstract parent object for physical infrastructure capable of participating in an energy-domain process.

EnergyAsset alone does not specify capability type.

---

## EMAH-INF-002 — GenerationAsset

Represents infrastructure capable of generating energy.

Examples may later include:

- solar array;
- wind turbine;
- hydro generator;
- geothermal generator.

Generation capability does not create authority to generate, connect, export, or dispatch.

---

## EMAH-INF-003 — StorageAsset

Represents infrastructure capable of storing energetic capacity.

Examples may later include:

- battery;
- thermal store;
- hydrogen store;
- mechanical storage system.

Stored energy and storage capacity remain distinct objects.

---

## EMAH-INF-004 — ConversionAsset

Represents infrastructure capable of converting energy between carriers or physical forms.

Examples:

- inverter;
- rectifier;
- electrolyzer;
- fuel cell;
- heat pump;
- power converter.

---

## EMAH-INF-005 — TransferInterface

Represents a bounded physical interface through which energy may be transferred between systems or assets.

Examples may include:

- grid interconnection;
- feeder interface;
- charging interface;
- pipeline interface;
- thermal exchange interface.

---

## EMAH-INF-006 — EnergyNode

Represents a bounded location or connection point in an energy topology.

EnergyNode is topological.

It does not independently imply ownership, authority, or control.

---

## EMAH-INF-007 — LoadAsset

Represents infrastructure capable of consuming or absorbing energy.

Consumption capability does not establish execution authority.

---

## EMAH-INF-008 — MeasurementPoint

Represents a declared physical or logical location at which energy-domain observation may occur.

MeasurementPoint is infrastructure.

A measurement generated at the point is evidence or observation, not authority.

Therefore:

**MeasurementPoint != Authority Source**

---

## EMAH-INF-009 — ControlInterface

Represents an interface through which a command or control signal may be presented to an energy asset.

ControlInterface represents technical capability.

It does not confer execution authority.

Therefore:

**Control Access != Execution Authority**

---

## EMAH-INF-010 — MicrogridBoundary

Represents the declared physical/topological boundary of a microgrid or similarly bounded local energy system.

The boundary object does not itself define governance or jurisdiction.

---

# 8. Physical Effect Objects

## EMAH-EFF-001 — IntendedEnergyEffect

Represents the physically consequential energy result requested or expected from an energy-domain action.

Examples may later include:

- generate quantity;
- charge quantity;
- discharge quantity;
- transfer quantity;
- curtail quantity;
- convert quantity.

Intended effect is not observed effect.

---

## EMAH-EFF-002 — ObservedEnergyEffect

Represents the physical energetic effect determined to have occurred under declared observation semantics.

Observed effect remains distinct from:

- command;
- authorization;
- execution attempt;
- financial settlement.

---

## EMAH-EFF-003 — PartialEnergyEffect

Represents a physical effect in which the observed consequential energy result differs from the intended result but is non-zero.

Formal semantics are reserved for EMAH-ARCH-07.

This object exists now only as an object type.

Therefore:

**PartialEnergyEffect Object != Partial-Effect Proof**

---

## EMAH-EFF-004 — EnergyEffectResidual

Represents the unresolved difference associated with intended and observed physical energy effect.

The exact algebra is reserved for a later pass.

EnergyEffectResidual is not automatically recoverable energy.

Therefore:

**Residual != Recoverable**

---

# 9. AHME Recovery Objects

## EMAH-REC-001 — EnergyResidual

Represents energy-domain remainder or residual condition following a consequential energy process.

Residual classification alone does not establish recoverability.

---

## EMAH-REC-002 — RecoverableEnergy

Represents energetic quantity or capacity classified as potentially recoverable under declared recovery semantics.

Recoverable does not mean recovered.

Therefore:

**Recoverable != Recovered**

---

## EMAH-REC-003 — RecoveredEnergy

Represents energy or capacity resulting from a completed recovery process.

RecoveredEnergy does not automatically reacquire prior qualification, admission, reserve, ownership, or authority state.

---

## EMAH-REC-004 — RequalifiedEnergy

Represents recovered or otherwise returned energetic capacity that has successfully passed a future energy-domain requalification process.

Requalification does not itself establish execution authority.

---

## EMAH-REC-005 — ReintegratedEnergy

Represents requalified energy or capacity admitted into a declared energy-system context for renewed participation.

Reintegration remains distinct from actual execution.

---

## EMAH-REC-006 — RegenerativeReturn

Represents the domain object recording completion of a governed AHME return pathway.

It may eventually bind:

- prior residual;
- recovery process;
- recovered energy;
- requalification;
- reintegration;
- renewed availability.

Its lifecycle semantics remain reserved for EMAH-ARCH-08.

---

# 10. External Reference Objects

These objects reference semantics owned outside EMAH.

They SHALL NOT duplicate the upstream object.

## EMAH-REF-001 — AuthorityReference

Reference to authority semantics owned by UAA or another subsequently reconciled authority source.

---

## EMAH-REF-002 — AdmissibilityReference

Reference to relevant UAA/AOMS admissibility determination.

---

## EMAH-REF-003 — ExecutionContinuityReference

Reference to EIP execution-continuity determination.

---

## EMAH-REF-004 — ProofOfBlockReference

Reference to governed refusal evidence supplied by Proof of Block.

---

## EMAH-REF-005 — IntegrityAssessmentReference

Reference to an IPT preservation-oriented evaluation where applicable.

---

## EMAH-REF-006 — FinancialStateReference

Reference to financial state owned by ORYNTH Financial Infrastructure.

---

## EMAH-REF-007 — SettlementReference

Reference to settlement semantics owned by Financial Infrastructure / UES.

---

# 11. Deliberately Unresolved Object Classes

ARCH-03 SHALL NOT presently create generic canonical objects for:

- Obligation;
- Jurisdiction;
- Principal;
- AutonomousAgent;
- DelegatedAuthority.

Those generic ownership questions remain unresolved by EMAH-ARCH-02.

Energy-specific objects may later be introduced only after their relationship to upstream ownership is explicitly reconciled.

---

# 12. Object Identity Rules

Every canonical EMAH object type must satisfy:

1. declared object family;
2. unique canonical type identifier;
3. declared semantic purpose;
4. declared EMAH or AHME ownership;
5. explicit upstream dependency where applicable;
6. explicit non-equivalence boundaries;
7. no hidden lifecycle semantics;
8. no hidden authority semantics;
9. no hidden admissibility semantics;
10. no hidden evidentiary conclusion.

---

# 13. Foundational Non-Equivalences

The candidate object system preserves:

**EnergySource != Renewable Qualification**

**EnergyCarrier != EnergyQuantity**

**EnergyQuantity != EnergyBatch**

**Capacity != Energy Quantity**

**Capacity != Availability**

**Availability != Admissibility**

**Reserve != Ownership**

**Reserve != Authority**

**RenewableAttribute != Physical Energy Identity**

**Command Interface != Authority**

**IntendedEnergyEffect != ObservedEnergyEffect**

**Residual != Recoverability**

**Recoverable != Recovered**

**Recovered != Requalified**

**Requalified != Reintegrated**

**Reintegrated != Authorized Execution**

**Physical Energy Effect != Economic Effect**

---

# 14. Forward Boundary

This object system does not authorize a lifecycle.

No object defined here may be assigned canonical states or transitions until:

**EMAH-ARCH-04 — Multi-Dimensional State Model**

is separately authorized and accepted.

This record is presently a candidate and requires review.

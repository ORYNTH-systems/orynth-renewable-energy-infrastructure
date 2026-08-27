# EMAH — Multi-Dimensional State Model

## Status

**EMAH-ARCH-04-P01 / CANDIDATE**

This document defines the candidate multi-dimensional state architecture
for EMAH / AHME.

It identifies independent state dimensions and candidate state values.

It does not define:

- lifecycle transitions;
- legal transition edges;
- transition preconditions;
- transition postconditions;
- authority creation;
- admissibility rules;
- execution rules;
- Proof-of-Block conditions;
- proof obligations;
- implementation behavior.

---

# 1. Governing State Principle

An EMAH object's state is multi-dimensional.

No single state dimension may silently determine another.

Therefore:

**Physical State != Authority State**

**Authority State != Admissibility State**

**Admissibility State != Control State**

**Control State != Economic State**

**Economic State != Evidence State**

**Evidence State != Environmental-Attribute State**

**Environmental-Attribute State != Recovery State**

**Recovery State != Continuity State**

State coexistence does not imply legal transition.

---

# 2. Canonical State Vector

For an EMAH-governed object `E`, the candidate state vector is:

`Σ(E) = (P, A, D, C, F, V, R, H, K)`

where:

- `P` = Physical State
- `A` = Authority-Reference State
- `D` = Admissibility-Reference State
- `C` = Control State
- `F` = Economic-Reference State
- `V` = Evidentiary State
- `R` = Environmental-Attribute State
- `H` = Recovery State
- `K` = Continuity State

The vector represents simultaneous state dimensions.

It is not a lifecycle sequence.

---

# 3. Physical State Dimension

## Identifier

`EMAH-STATE-PHY`

## Purpose

Represents physically relevant energy-domain condition.

Candidate values:

- `PHY_UNKNOWN`
- `PHY_POTENTIAL`
- `PHY_PRESENT`
- `PHY_AVAILABLE`
- `PHY_UNAVAILABLE`
- `PHY_STORED`
- `PHY_FLOWING`
- `PHY_CONVERTING`
- `PHY_DELIVERED`
- `PHY_CURTAILED`
- `PHY_DEPLETED`
- `PHY_RESIDUAL`
- `PHY_LOST`
- `PHY_IMPAIRED`

These values describe physical condition only.

They do not establish:

- ownership;
- authority;
- admissibility;
- economic settlement;
- renewable qualification.

Therefore:

**PHY_AVAILABLE != Authorized**

and:

**PHY_DELIVERED != Financially Settled**

---

# 4. Authority-Reference State Dimension

## Identifier

`EMAH-STATE-AUTH`

## Purpose

Represents EMAH's reference to upstream authority determination.

EMAH does not redefine generic authority semantics.

Candidate reference values:

- `AUTH_UNRESOLVED`
- `AUTH_REFERENCED`
- `AUTH_VALID`
- `AUTH_INVALID`
- `AUTH_EXPIRED`
- `AUTH_REVOKED`
- `AUTH_DISPUTED`
- `AUTH_SCOPE_MISMATCH`
- `AUTH_CONTINUITY_UNVERIFIED`

These states record the authority condition relevant to EMAH.

Authority validity remains governed by upstream authority architecture.

Therefore:

**AUTH_VALID != Execution Eligibility**

---

# 5. Admissibility-Reference State Dimension

## Identifier

`EMAH-STATE-ADM`

## Purpose

Represents current admissibility relevant to an EMAH-governed action or object.

Candidate values:

- `ADM_UNRESOLVED`
- `ADM_RECONCILIATION_REQUIRED`
- `ADM_ADMISSIBLE`
- `ADM_INADMISSIBLE`
- `ADM_INDETERMINATE`
- `ADM_STALE`
- `ADM_CONDITIONALLY_ADMISSIBLE`

These values do not create authority.

They do not authorize execution by themselves.

Therefore:

**ADM_ADMISSIBLE != Authorized**

and:

**ADM_ADMISSIBLE != Executed**

---

# 6. Control State Dimension

## Identifier

`EMAH-STATE-CTL`

## Purpose

Represents technical control-surface condition.

Candidate values:

- `CTL_UNKNOWN`
- `CTL_DISCONNECTED`
- `CTL_CONNECTED`
- `CTL_OBSERVABLE`
- `CTL_COMMAND_CAPABLE`
- `CTL_COMMAND_PENDING`
- `CTL_COMMAND_PRESENT`
- `CTL_BLOCKED`
- `CTL_DISABLED`
- `CTL_FAULTED`

Control state describes technical capability or condition.

It does not establish authority.

Therefore:

**CTL_COMMAND_CAPABLE != Execution Authority**

and:

**CTL_COMMAND_PRESENT != Consequential Effect**

---

# 7. Economic-Reference State Dimension

## Identifier

`EMAH-STATE-ECO`

## Purpose

Represents EMAH's reference to economic or settlement state owned by
Financial Infrastructure / UES or another admitted upstream financial system.

Candidate values:

- `ECO_UNRESOLVED`
- `ECO_NOT_APPLICABLE`
- `ECO_REFERENCED`
- `ECO_PENDING`
- `ECO_PARTIAL`
- `ECO_SETTLED`
- `ECO_DISPUTED`
- `ECO_REVERSED`
- `ECO_FAILED`

EMAH does not define generic financial settlement semantics here.

Therefore:

**ECO_SETTLED != Physical Delivery**

and:

**Physical Delivery != ECO_SETTLED**

---

# 8. Evidentiary State Dimension

## Identifier

`EMAH-STATE-EVD`

## Purpose

Represents the condition of evidence relevant to an EMAH object,
observation, effect, or determination.

Candidate values:

- `EVD_NONE`
- `EVD_EXPECTED`
- `EVD_PRESENT`
- `EVD_INCOMPLETE`
- `EVD_CONFLICTING`
- `EVD_PROVENANCE_GAP`
- `EVD_INTEGRITY_IMPAIRED`
- `EVD_RECONSTRUCTABLE`
- `EVD_NONRECONSTRUCTABLE`
- `EVD_REVIEW_REQUIRED`

These values describe evidence condition.

They do not constitute evidence-admissibility or sufficiency findings
unless supplied by an admitted assurance layer.

Therefore:

**Evidence Present != Evidence Admissible**

**Evidence Admissible != Evidence Sufficient**

**Evidence != Authority**

---

# 9. Environmental-Attribute State Dimension

## Identifier

`EMAH-STATE-ATR`

## Purpose

Represents state associated with renewable, environmental, descriptive,
or qualification-related attributes.

Candidate values:

- `ATR_NONE`
- `ATR_DECLARED`
- `ATR_UNVERIFIED`
- `ATR_SUPPORTED`
- `ATR_DISPUTED`
- `ATR_INVALID`
- `ATR_EXPIRED`
- `ATR_SUPERSEDED`
- `ATR_PROVENANCE_IMPAIRED`

These values concern an attribute or qualification claim.

They do not transform the attribute into the physical energy object.

Therefore:

**ATR_SUPPORTED != Physical Energy Identity**

and:

**Renewable Attribute != Persistent Physical Energy Identity**

---

# 10. Recovery State Dimension

## Identifier

`EMAH-STATE-REC`

## Purpose

Represents AHME recovery-related classification.

Candidate values:

- `REC_NOT_APPLICABLE`
- `REC_UNASSESSED`
- `REC_RESIDUAL`
- `REC_RECOVERABILITY_UNKNOWN`
- `REC_RECOVERABLE`
- `REC_NONRECOVERABLE`
- `REC_RECOVERY_PENDING`
- `REC_RECOVERY_IN_PROGRESS`
- `REC_PARTIALLY_RECOVERED`
- `REC_RECOVERED`
- `REC_REQUALIFICATION_REQUIRED`
- `REC_REQUALIFIED`
- `REC_REQUALIFICATION_FAILED`
- `REC_REINTEGRATION_PENDING`
- `REC_REINTEGRATED`

These are state values.

They are not canonical object identities.

Therefore:

**REC_RECOVERABLE != RecoverableEnergy Object**

because no such canonical object exists.

Likewise:

**REC_RECOVERED != RecoveredEnergy Object**

**REC_REQUALIFIED != RequalifiedEnergy Object**

**REC_REINTEGRATED != ReintegratedEnergy Object**

Recovery state does not imply renewed execution authority.

---

# 11. Continuity State Dimension

## Identifier

`EMAH-STATE-CON`

## Purpose

Represents energy-domain continuity condition while preserving EIP and IPT
ownership boundaries.

Candidate values:

- `CON_UNASSESSED`
- `CON_INTACT`
- `CON_PARTIAL`
- `CON_DEGRADED`
- `CON_BROKEN`
- `CON_RECONSTRUCTED`
- `CON_DISPUTED`
- `CON_UNVERIFIABLE`

EMAH continuity state concerns the declared energy-domain continuity scope.

It does not replace:

- EIP rule / authority continuity;
- IPT preservation-oriented continuity;
- evidentiary reconstruction.

Therefore:

**Energy Continuity != Authority Continuity**

**Energy Continuity != Rule Identity Continuity**

**Energy Continuity != Preservation Integrity**

---

# 12. Valid Multi-State Coexistence

Different dimensions may contain apparently conflicting conditions
without contradiction.

Examples:

### Example A

`PHY_AVAILABLE`
+
`AUTH_INVALID`

Meaning:

Energy is physically available, but current authority is invalid.

No execution conclusion is implied by this example.

### Example B

`PHY_DELIVERED`
+
`ECO_PENDING`

Meaning:

A physical effect may have occurred while economic settlement remains pending.

### Example C

`ATR_SUPPORTED`
+
`EVD_INCOMPLETE`

Meaning:

An attribute may presently carry a supported classification while the
available EMAH evidence surface remains incomplete under another review scope.

### Example D

`REC_RECOVERED`
+
`ADM_RECONCILIATION_REQUIRED`

Meaning:

Recovery may have occurred while renewed admissibility has not yet been established.

### Example E

`CTL_COMMAND_CAPABLE`
+
`AUTH_UNRESOLVED`

Meaning:

Technical ability to command an asset exists without resolved authority.

These examples demonstrate coexistence only.

They are not authorized lifecycle paths.

---

# 13. State Independence Rules

ARCH-04 establishes the following candidate state-separation rules:

1. Physical availability does not establish authority.
2. Authority validity does not establish admissibility.
3. Admissibility does not establish execution.
4. Technical control capability does not establish authority.
5. Physical effect does not establish financial settlement.
6. Financial settlement does not establish physical effect.
7. Evidence existence does not establish legitimacy.
8. Environmental attribution does not establish physical identity.
9. Recovery does not establish requalification.
10. Requalification does not establish renewed execution authority.
11. Continuity in one dimension does not establish continuity in another.
12. Unknown state shall not silently collapse into valid state.

These are architectural state-separation propositions.

They are not yet formal invariants or proofs.

---

# 14. Unknown / Indeterminate State Rule

Every state dimension must support an explicit unresolved condition
where the relevant condition cannot be defensibly determined.

Absence of a determination shall not silently become:

- valid;
- invalid;
- admissible;
- inadmissible;
- available;
- unavailable;
- recovered;
- unrecoverable;
- continuous;
- discontinuous.

Unknown remains explicit.

---

# 15. No Cross-Dimension Authority Inference

No state coordinate may create authority by inference.

Examples:

`PHY_AVAILABLE`

does not imply:

`AUTH_VALID`

`CTL_COMMAND_CAPABLE`

does not imply:

`AUTH_VALID`

`EVD_PRESENT`

does not imply:

`AUTH_VALID`

`ECO_SETTLED`

does not imply:

`AUTH_VALID`

`ATR_SUPPORTED`

does not imply:

`AUTH_VALID`

---

# 16. No Transition Semantics

ARCH-04 does not determine whether any state may legally become another state.

For example, ARCH-04 does not establish:

`PHY_PRESENT -> PHY_AVAILABLE`

or:

`REC_RECOVERED -> REC_REQUALIFIED`

or:

`AUTH_VALID -> ADM_ADMISSIBLE`

or any other transition.

Those questions are reserved for:

**EMAH-ARCH-05 — Energy Lifecycle + Transition Registry**

Therefore:

**State Vocabulary != Transition Graph**

**State Coexistence != Transition Permission**

**Observed State Change != Authorized Transition**

---

# 17. Forward Gate

Acceptance of ARCH-04 would authorize only the construction of
EMAH-ARCH-05 lifecycle and transition architecture.

It would not pre-accept any transition.

Every transition must later receive:

- source state;
- target state;
- affected dimension;
- preconditions;
- cross-dimensional dependencies;
- prohibited conditions;
- postconditions;
- authority relation;
- admissibility relation;
- evidence requirements;
- failure semantics.

Those fields remain outside ARCH-04.


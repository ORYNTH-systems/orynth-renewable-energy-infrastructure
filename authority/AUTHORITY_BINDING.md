# EMAH — Authority Binding

## Status

**EMAH-ARCH-06-P01 / CANDIDATE**

This record defines how an EMAH governed transition instance references
upstream execution authority.

It does not create generic authority.

Generic authority semantics remain owned upstream by UAA.

---

# 1. Governing Distinction

ARCH-05 established structural transition types.

ARCH-06 governs transition instances proposed for consequential execution.

Therefore:

**Transition Type != Transition Instance**

**Transition Instance != Authority**

**Capability != Authority**

**Authority != Admissibility**

**Authority != Present Execution Eligibility**

---

# 2. Observed Event / Governed Action Separation

Not every physical state change is an authorized action.

EMAH distinguishes:

## Observed Physical Event

A physical change observed in the energy domain without a claim that
an EMAH-controlled principal caused it.

Examples may include:

- naturally variable renewable generation;
- environmental loss;
- passive depletion;
- externally caused grid condition;
- measured physical impairment.

Observation of such an event does not retroactively create authority.

## Governed Transition Attempt

A proposed consequential action intended to cause or materially direct
a registered EMAH transition.

Examples may later include:

- controlled charging;
- controlled discharge;
- dispatch;
- export;
- curtailment command;
- conversion command;
- transfer initiation.

A governed transition attempt requires an authority binding where
upstream authority semantics require one.

Therefore:

**Observed State Change != Governed Transition Authorization**

---

# 3. Transition Authority Envelope

A governed transition attempt is represented by an architectural envelope:

`Γ = (transition_id, subject_ref, resource_ref, authority_ref, scope, temporal_bound, state_snapshot_ref)`

where:

- `transition_id` references an accepted ARCH-05 transition;
- `subject_ref` references the actor or authority subject recognized upstream;
- `resource_ref` references the EMAH object or asset affected;
- `authority_ref` references upstream authority;
- `scope` identifies the bounded act or transition authority;
- `temporal_bound` identifies the authority's applicable time boundary;
- `state_snapshot_ref` identifies the current-state basis used for later reconciliation.

This envelope is an architectural record.

It is not a new generic Principal or Authority object.

---

# 4. Authority Binding Requirements

For a governed transition attempt requiring execution authority:

1. the transition type must exist in the accepted transition registry;
2. the governed resource must be within the transition's object scope;
3. an upstream authority reference must exist;
4. authority must bind to the relevant subject;
5. authority must bind to the relevant resource or resource scope;
6. authority must bind to the requested consequential act;
7. authority must remain within its temporal scope;
8. authority scope must not be exceeded;
9. authority must not be known revoked or expired;
10. authority continuity must remain independently verifiable where required.

These requirements consume upstream authority semantics.

They do not redefine UAA.

---

# 5. Non-Transferability

Authority for one transition does not automatically authorize another.

Therefore:

**Authority for Storage != Authority for Export**

**Authority for Observation != Authority for Control**

**Authority for Charge != Authority for Discharge**

**Authority for Generation != Authority for Transfer**

**Authority for Transfer != Authority for Settlement**

---

# 6. Capability Firewall

Technical ability to affect an energy asset does not establish authority.

Therefore:

**Control Access != Authority**

**Possession of Credential != Authority**

**Possession of Key != Authority**

**API Access != Authority**

**Physical Access != Authority**

**Optimization Recommendation != Authority**

---

# 7. Historical Authority

Historical validity is insufficient for present execution.

An authority reference that was valid previously may now be:

- expired;
- revoked;
- scope-mismatched;
- superseded;
- continuity-unverified;
- otherwise non-current.

Therefore:

**Prior Authority != Current Execution Authority**

---

# 8. No Authority From Other Dimensions

Authority shall not be inferred from:

- physical availability;
- control capability;
- economic settlement;
- environmental qualification;
- evidence existence;
- prior recovery;
- continuity state.

Therefore:

`PHY_AVAILABLE` does not imply `AUTH_VALID`.

`CTL_COMMAND_CAPABLE` does not imply `AUTH_VALID`.

`ECO_SETTLED` does not imply `AUTH_VALID`.

`ATR_SUPPORTED` does not imply `AUTH_VALID`.

`EVD_PRESENT` does not imply `AUTH_VALID`.

---

# 9. Principal Ownership Boundary

ARCH-02 did not establish a portfolio-wide canonical owner for a generic
Principal object.

ARCH-06 therefore uses `subject_ref`.

It SHALL NOT create a generic EMAH `Principal` object.

Any future principal ontology requires explicit architectural reconciliation.

---

# 10. Jurisdiction Boundary

ARCH-06 does not establish generic jurisdictional authority.

A transition may eventually require jurisdiction-relevant authority
constraints, but no generic Jurisdiction object or authority model is
created here.

---

# 11. Autonomous-Agent Boundary

An autonomous system may possess technical capability to request,
recommend, or present a transition.

That does not establish autonomous execution authority.

ARCH-06 does not create a generic AutonomousAgent authority model.

Therefore:

**Autonomous Capability != Autonomous Authority**

---

# 12. Forward Boundary

Authority binding is necessary where applicable but is not sufficient
for execution.

A transition instance must separately satisfy current admissibility.

Consequential execution semantics remain reserved for EMAH-ARCH-07.


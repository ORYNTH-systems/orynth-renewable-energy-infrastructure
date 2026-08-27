# EMAH — Obligation Architecture

## Status

**EMAH-ARCH-10 / ACCEPTED**

This architecture defines bounded energy-domain obligation semantics.

It does not establish portfolio-wide ownership of a generic Obligation
primitive.

---

# 1. Governing Distinctions

**Obligation != Authority**

**Obligation != Admissibility**

**Obligation != Settlement**

**Obligation != Evidence**

**Obligation != Execution**

**Obligation != Physical Effect**

An obligation may exist without creating authority to satisfy it.

An obligation may exist while the relevant action remains inadmissible.

An obligation may remain open after physical execution.

A financial settlement may occur while a physical-domain obligation remains
unsatisfied.

---

# 2. Ownership Boundary

ARCH-02 left generic obligation ownership unresolved.

ARCH-10 therefore defines:

**Energy-Domain Obligation**

without asserting:

**Generic ORYNTH Obligation Ownership**

Therefore:

**Energy-Domain Obligation != Generic Obligation Primitive**

No later architecture may interpret ARCH-10 as silently assigning
portfolio-wide obligation ownership to EMAH.

---

# 3. Candidate Obligation Form

A bounded EMAH obligation may be represented as:

`Omega = (id, class, subject_ref, object_ref, source_ref, condition, due_boundary, satisfaction_basis, status)`

where:

- `id` identifies the obligation record;
- `class` identifies the energy-domain obligation class;
- `subject_ref` references the responsible subject where known;
- `object_ref` references the governed energy object/resource;
- `source_ref` identifies the event, transition, designation, effect, or
  recovery condition creating the obligation basis;
- `condition` states what must be satisfied;
- `due_boundary` records any applicable temporal or event boundary;
- `satisfaction_basis` identifies what evidence or state would support
  satisfaction;
- `status` records current obligation condition.

This tuple does not create generic authority, principal, or jurisdiction
objects.

---

# 4. Candidate Energy-Domain Obligation Families

ARCH-10 admits candidate energy-domain families including:

1. Delivery / Effect Obligation
2. Residual Handling Obligation
3. Recovery Obligation
4. Requalification Obligation
5. Reintegration Obligation
6. Reserve Designation Obligation
7. Continuity Obligation
8. Measurement / Observation Obligation
9. Evidence / Record Preservation Obligation
10. Attribute / Qualification Obligation

These families remain bounded to EMAH / AHME semantics.

---

# 5. Delivery / Effect Obligation

A delivery/effect obligation concerns a required physical-energy outcome
under a declared boundary.

It does not establish authority to execute the delivery.

Therefore:

**Delivery Obligation != Execution Authority**

Physical delivery may partially satisfy such an obligation.

Financial payment does not independently establish physical satisfaction.

Therefore:

**Payment != Delivery Obligation Satisfaction**

---

# 6. Residual Handling Obligation

A partial or mismatched physical effect may create a bounded requirement to
evaluate or handle an energy-domain residual.

Such obligation does not imply recoverability.

Therefore:

**Residual Obligation != Recoverability**

and:

**Residual Obligation != Recovery Authority**

---

# 7. Recovery Obligation

A requirement to evaluate, attempt, or complete recovery does not mean:

- recovery is physically possible;
- recovery is admissible;
- recovery is authorized;
- recovery succeeded.

Therefore:

**Recovery Obligation != Recoverability**

**Recovery Obligation != Recovery Execution Authority**

**Recovery Obligation != Recovery Completion**

---

# 8. Requalification / Reintegration Obligations

Recovered energy may require requalification before renewed participation.

Requalified energy may require reintegration evaluation.

These obligations do not create their outcomes.

Therefore:

**Requalification Obligation != REC_REQUALIFIED**

**Reintegration Obligation != REC_REINTEGRATED**

---

# 9. Reserve Designation Obligation

`ReserveDesignation` may create energy-domain duties associated with reserved
energy or capacity.

ARCH-10 does not convert ReserveDesignation into a generic obligation object.

Therefore:

**ReserveDesignation != Generic Obligation**

**ReserveDesignation != Execution Authority**

---

# 10. Continuity Obligation

An energy-domain continuity obligation may require preservation,
reconstruction, restoration planning, or continuity assessment.

It does not establish that continuity currently exists.

Therefore:

**Continuity Obligation != Continuity State**

---

# 11. Observation / Evidence Obligation

A requirement to measure, observe, record, preserve, or reconstruct evidence
does not create the underlying physical or authority state.

Therefore:

**Evidence Obligation != Evidence**

**Evidence Obligation != Authority**

---

# 12. Attribute Obligation

A requirement to verify, maintain, renew, or reassess an environmental
attribute does not make the attribute valid.

Therefore:

**Attribute Obligation != ATR_SUPPORTED**

---

# 13. Compensation Boundary

Compensation may become relevant to an unsatisfied or partially satisfied
obligation.

However:

**Compensation != Obligation Satisfaction by default**

and:

**Compensation Cannot Self-Authorize**

Financial compensation semantics remain owned by Financial Infrastructure.

---

# 14. Historical Persistence

An obligation is not silently erased because:

- the system recovered;
- evidence was reconstructed;
- a financial settlement occurred;
- a later execution succeeded;
- a replacement record exists.

Therefore:

**Recovery != Obligation Erasure**

**Reconstruction != Obligation Erasure**

**Settlement != Obligation Erasure**

---

# 15. Forward Boundary

ARCH-10 defines EMAH obligation architecture only.

Cross-domain obligation interfaces remain reserved for:

**EMAH-ARCH-11 — Cross-Domain Interfaces**



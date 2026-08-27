# EMAH — Threat / Failure Architecture

## Status

**EMAH-ARCH-14 / ACCEPTED**

ARCH-14 inverts accepted invariant boundaries into explicit threat and failure
conditions.

It does not demonstrate exploitability and does not discharge proof
obligations.

---

# 1. Governing Distinctions

**Threat Identified != Threat Demonstrated**

**Threat Demonstrated != Threat Exploitable**

**Threat Exploitable != Failure Observed**

**Threat Taxonomy != Proof Discharge**

**Failure Class Defined != Failure Observed**

---

# 2. Threat / Failure Record

A candidate threat/failure record may be represented as:

`TF = (id, family, invariant_ref, proof_ref, condition, consequence, observation_basis, status)`

where:

- `id` identifies the threat/failure class;
- `family` identifies its architectural family;
- `invariant_ref` identifies the protected invariant;
- `proof_ref` identifies the corresponding OPEN proof obligation;
- `condition` states the violating condition;
- `consequence` states the bounded architectural consequence;
- `observation_basis` identifies what would be required to claim observation;
- `status` records taxonomy state.

---

# 3. Taxonomy State

All P01 entries begin:

**IDENTIFIED**

This means a failure condition has been architecturally identified.

It does not mean:

- observed;
- reproduced;
- exploitable;
- demonstrated;
- realized in implementation;
- production-relevant.

---

# 4. Failure Derivation Rule

Every accepted invariant SHALL map to at least one explicit violating
condition.

A threat/failure class is therefore the architectural inverse of a protected
boundary.

---

# 5. Proof Boundary

Threat identification does not discharge the associated proof obligation.

Therefore:

**Threat Identified != Proof Obligation Discharged**

All 65 ARCH-13 primary proof obligations remain OPEN throughout ARCH-14-P01.

---

# 6. Observation Boundary

A failure may be architecturally possible without having been observed.

Therefore:

**Possible Failure != Observed Failure**

and:

**No Observed Failure != Failure Impossible**

---

# 7. Exploitability Boundary

A failure condition may exist without a practical exploitation path.

Therefore:

**Failure Condition != Exploit Path**

**Exploit Path != Successful Exploitation**

---

# 8. Severity Boundary

Taxonomy membership does not establish severity.

Severity, likelihood, exploitability, and impact require separate evaluation.

Therefore:

**Threat Class != Risk Score**

---

# 9. External Ownership Boundary

ARCH-14 does not create a generic ORYNTH threat ontology.

It defines EMAH / AHME threat and failure classes only.

---

# 10. Forward Boundary

Reference component architecture remains reserved for:

**EMAH-ARCH-15 — Reference Component Architecture**



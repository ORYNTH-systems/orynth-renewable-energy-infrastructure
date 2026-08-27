# EMAH — Threat Injection Model

## Status

**EMAH-ARCH-16-P01 / CANDIDATE**

Threat injection permits controlled exercise of accepted ARCH-14
threat/failure classes.

---

# 1. Governing Distinctions

**Threat Injection != Threat Demonstration in Reality**

**Simulated Exploitability != Real-World Exploitability**

**Threat Triggered in Simulation != Production Vulnerability Confirmed**

---

# 2. Candidate Injection Record

`TI = (id, threat_ref, injection_point, precondition, injected_condition, expected_boundary_violation, scope)`

---

# 3. Injection Modes

Candidate modes may include:

- state substitution;
- stale authority reference;
- revoked authority;
- admissibility bypass attempt;
- command/execution collapse;
- missing observation;
- false causal attribution;
- recovery/restoration collapse;
- evidence-as-authority substitution;
- obligation-as-authority substitution;
- payment-as-delivery substitution;
- interface-as-ownership substitution.

---

# 4. Threat Status Preservation

ARCH-16 simulation does not alter ARCH-14 taxonomy status.

Threat classes remain:

**IDENTIFIED**

A separate admitted process would be required to classify a threat as
demonstrated, exploitable, or observed.

---

# 5. Proof Preservation

Threat realization in simulation does not discharge the related proof
obligation.

Therefore:

**Simulated Threat Realization != Proof Discharge**


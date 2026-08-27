# EMAH — Simulation Architecture

## Status

**EMAH-ARCH-16-P01 / CANDIDATE**

ARCH-16 defines a bounded simulation architecture for exercising accepted
EMAH / AHME architecture.

Simulation is an analytical execution environment.

It is not production runtime.

---

# 1. Governing Distinctions

**Simulation Executes != Runtime Executes**

**Simulation Pass != Invariant Proven**

**Simulation Pass != Production Safety**

**Simulation Failure != Production Failure by default**

**Simulated Threat Realization != Real-World Exploitability**

**No Simulated Failure != Failure Impossible**

---

# 2. Simulation Purpose

The simulation architecture may exercise:

- canonical object states;
- multi-dimensional state;
- lifecycle transitions;
- authority references;
- admissibility gates;
- execution state;
- partial physical effect;
- AHME residuals;
- recoverability;
- recovery;
- requalification;
- reintegration;
- obligations;
- evidence;
- provenance;
- threat/failure conditions;
- reference-component interactions.

---

# 3. Simulation Boundary

A simulation result is bounded by:

- scenario definition;
- initial state;
- modeled rules;
- modeled dependencies;
- simulated inputs;
- simulation engine behavior;
- observation boundary;
- temporal boundary;
- scenario version.

Therefore:

**Simulation Result != Unbounded System Claim**

---

# 4. Candidate Simulation Run

A simulation run may be represented as:

`SIM = (id, scenario_ref, initial_state, modeled_components, injected_conditions, execution_trace, observations, result, scope)`

---

# 5. Model / Reality Separation

Simulation necessarily operates through a model.

Therefore:

**Simulation Model != Physical Reality**

**Model Fidelity != Reality Identity**

A correct result relative to an incorrect or incomplete model does not
establish real-world correctness.

---

# 6. Reference Component Boundary

Reference components may be represented in simulation.

Simulation does not promote them beyond DEFINED.

Therefore:

**Simulated Component Behavior != Implemented Component**

**Simulated Component Conformance != Runtime Component Conformance**

---

# 7. Proof Boundary

Simulation may produce artifacts relevant to later proof work.

Simulation does not automatically discharge proof obligations.

Therefore:

**Simulation Evidence != Proof Discharge**

All 65 primary proof obligations remain OPEN.

---

# 8. Threat Boundary

Simulation may inject or realize an ARCH-14 threat condition.

This may demonstrate behavior within the simulation scope only.

Therefore:

**Threat Realized in Simulation != Threat Exploitable in Production**

**Simulated Exploit Path != Real-World Exploit Path**

Threat classes remain IDENTIFIED by ARCH-16-P01.

---

# 9. Safety Boundary

Absence of failure in simulation does not establish safety.

Therefore:

**Simulation Success != Safety Proof**

---

# 10. Failure Preservation

Simulated BLOCKED, FAILED, INDETERMINATE, residual, partial-effect, or
continuity-degraded states must remain explicit.

A later simulated success SHALL NOT silently erase earlier simulated adverse
states.

---

# 11. Forward Boundary

Cross-lock and orphan detection remain reserved for:

**EMAH-ARCH-17 — Cross-Lock / Orphan Detection**


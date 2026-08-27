# EMAH — Simulation Evidence Model

## Status

**EMAH-ARCH-16 / ACCEPTED**

Simulation may produce evidence-like artifacts for analysis.

These artifacts must remain visibly simulation-derived.

---

# 1. Governing Distinctions

**Simulation Evidence != Runtime Evidence**

**Simulation Evidence != Proof**

**Simulation Trace != Production Execution Record**

**Simulation Provenance != Production Provenance**

---

# 2. Candidate Simulation Evidence

A simulation may record:

- scenario identifier;
- run identifier;
- initial state;
- injected conditions;
- event sequence;
- simulated component outputs;
- simulated observations;
- simulated failure states;
- final state;
- simulation engine version.

---

# 3. Provenance Label

Simulation-derived records SHALL preserve their simulation origin.

Therefore:

**Simulated Record != Original Runtime Observation**

---

# 4. Reproducibility

Reproducing a simulation may establish reproducibility of modeled behavior.

It does not independently establish real-world behavior.

Therefore:

**Simulation Reproducibility != Production Reproducibility**



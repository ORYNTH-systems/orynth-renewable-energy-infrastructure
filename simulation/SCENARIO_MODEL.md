# EMAH — Simulation Scenario Model

## Status

**EMAH-ARCH-16 / ACCEPTED**

---

# 1. Candidate Scenario Form

A simulation scenario may be represented as:

`SCN = (id, class, purpose, initial_state_ref, event_sequence, injected_conditions, expected_observations, termination_condition, scope)`

---

# 2. Scenario Classes

ARCH-16 admits scenario families for:

- nominal transition;
- authority failure;
- admissibility failure;
- execution failure;
- partial physical effect;
- over-effect;
- observation gap;
- evidence conflict;
- recovery path;
- failed recovery;
- obligation persistence;
- financial / physical divergence;
- cross-domain ownership violation;
- threat injection;
- continuity degradation.

---

# 3. Expected Result Boundary

An expected result is an assertion to test.

It is not guaranteed truth.

Therefore:

**Expected Result != Observed Result**

---

# 4. Negative Scenarios

A negative scenario may deliberately inject an invariant-violating condition.

Such injection does not modify the accepted invariant.

---

# 5. Scenario Reproducibility

A scenario intended for reproducible analysis must preserve:

- scenario version;
- input state;
- event sequence;
- injected conditions;
- engine version;
- modeled dependency versions.

Therefore:

**Same Scenario Name != Same Simulation Run**



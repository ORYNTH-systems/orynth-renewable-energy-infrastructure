# EMAH — Observation Record Model

## Status

**EMAH-ARCH-09 / ACCEPTED**

Observation records support physical-effect and state determination.

---

# 1. Required Candidate Fields

A candidate observation record may include:

- observation identifier;
- object reference;
- measurement point;
- physical interface;
- measured quantity;
- unit;
- temporal window;
- timestamp;
- source;
- uncertainty;
- calibration or integrity reference where available;
- related transition;
- related execution;
- prior observation references.

---

# 2. Observation / State

An observation may support a state determination.

It is not itself identical to the state.

Therefore:

**Observation != State**

---

# 3. Observation / Effect

A measurement may support an observed physical effect determination.

It does not automatically prove:

- causal attribution;
- execution legitimacy;
- authority;
- admissibility.

---

# 4. Missing Observation

Absence of observation must remain distinct from observation of zero.

Therefore:

**No Observation != O = 0**

---

# 5. Conflicting Observations

Conflicting observations shall remain visible.

They shall not be silently resolved by deletion.

Therefore:

**Conflict != Resolution**



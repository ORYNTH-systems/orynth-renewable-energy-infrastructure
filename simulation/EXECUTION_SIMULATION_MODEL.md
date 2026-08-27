# EMAH — Execution Simulation Model

## Status

**EMAH-ARCH-16-P01 / CANDIDATE**

The simulation engine may represent consequential execution chains.

---

# 1. Candidate Simulated Chain

`State -> Authority Ref -> Admissibility -> Gate -> Command -> Attempt -> Execution State -> Observed Effect`

Simulation SHALL preserve each stage separately.

---

# 2. Governing Distinctions

**Simulated Command != Simulated Execution Attempt**

**Simulated Execution Attempt != Simulated Execution Completion**

**Simulated Execution != Simulated Observed Effect**

**Simulated Observed Effect != Real Physical Effect**

---

# 3. Blocking

A blocked simulated execution must preserve:

- attempted transition reference;
- blocking stage;
- blocking basis;
- simulated execution outcome;
- generated evidence where modeled.

A simulation block does not constitute a real-world Proof of Block artifact.

Therefore:

**Simulated Block != Production Proof of Block**

---

# 4. Partial Effect

Simulation may exercise:

- `O = 0`
- `0 < O < I`
- `O = I`
- `O > I`
- dimensional mismatch
- indeterminate observation

The accepted ARCH-07 effect semantics remain unchanged.

---

# 5. Observation Boundary

No simulated observation must not be collapsed into simulated zero.

Therefore:

**No Simulated Observation != Simulated O = 0**


# EMAH — Component Failure Model

## Status

**EMAH-ARCH-15-P01 / CANDIDATE**

Component failure semantics remain distinct from architectural threat
identification.

---

# 1. Governing Distinctions

**Component Failure != Threat Class**

**Threat Class != Observed Component Failure**

**Component Error != Architectural Invariant Violation by default**

---

# 2. Candidate Component Failure States

- `CMP_UNKNOWN`
- `CMP_READY`
- `CMP_BLOCKED`
- `CMP_DEGRADED`
- `CMP_FAILED`
- `CMP_INDETERMINATE`
- `CMP_DEPENDENCY_UNAVAILABLE`
- `CMP_SCOPE_MISMATCH`

---

# 3. Fail-Closed Rule

Where a component is responsible for a consequential gate and cannot
establish the required condition:

**Indeterminate Gate != Permission**

---

# 4. Evidence Rule

A component failure record is evidence of the component state.

It is not automatically proof of the underlying system-wide proposition.

Therefore:

**Component Failure Record != Global Failure Proof**


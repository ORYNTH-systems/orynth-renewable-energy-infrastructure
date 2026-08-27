# EMAH — Proof Discharge Model

## Status

**EMAH-ARCH-13-P01 / CANDIDATE**

---

# 1. Governing Rule

**Proof Obligation Defined != Proof Obligation Discharged**

A proof obligation exists because something must still be demonstrated.

---

# 2. Candidate Discharge Record

A later discharge record may include:

`DR = (proof_obligation_ref, method, scope, artifacts, result, reviewer, timestamp)`

This record format does not itself discharge an obligation.

---

# 3. Discharge Results

Candidate later results may include:

- `DISCHARGE_PASS`
- `DISCHARGE_FAIL`
- `DISCHARGE_PARTIAL`
- `DISCHARGE_INDETERMINATE`
- `DISCHARGE_BLOCKED`

No P01 obligation receives any discharge result.

---

# 4. Partial Discharge

Partial discharge SHALL preserve the undischarged remainder.

Therefore:

**Partial Discharge != Full Discharge**

---

# 5. Independent Reproduction

Where a claim depends on reproducible inspection, the verifier must be able
to inspect the exact bounded artifacts relevant to the proposition.

Therefore:

**Verifier Agreement != Reproducible Proof**

---

# 6. Formal / Empirical Separation

Formal proof and empirical evidence remain distinguishable.

Therefore:

**Empirical Support != Formal Proof**

unless the claim being discharged is explicitly empirical and bounded.

---

# 7. Counterexample Rule

A valid counterexample defeats a universal proposition within the scope to
which that counterexample applies.

Counterexamples SHALL NOT be silently discarded.

---

# 8. Non-Self-Certification

Generation of a proof artifact by the same system under examination does not
independently establish correctness.

Therefore:

**Self-Generated Proof Artifact != Independent Verification**


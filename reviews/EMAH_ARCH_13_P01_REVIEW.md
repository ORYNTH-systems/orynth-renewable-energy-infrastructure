# EMAH-ARCH-13-P01 — Proof Obligation Architecture Review

## Status

**SUBMITTED FOR ACCEPTANCE REVIEW**

## Source Corpus

Accepted ARCH-12 invariant corpus:

**65 invariants**

## Candidate Proof Corpus

Primary proof obligations:

**65 OPEN**

## Review Surface

- `proofs/PROOF_OBLIGATION_ARCHITECTURE.md`
- `proofs/PROOF_DISCHARGE_MODEL.md`
- `proofs/PROOF_SCOPE_MODEL.md`
- `proofs/PROOF_EVIDENCE_BOUNDARY.md`
- `proofs/PRIMARY_PROOF_OBLIGATIONS.md`
- `registries/PROOF_OBLIGATION_REGISTRY.md`
- `registries/INVARIANT_PROOF_TRACEABILITY.md`

## Required Review Questions

### R01 — Exact Source Corpus

Are proof obligations derived from the exact accepted 65-invariant corpus?

### R02 — Complete Coverage

Does every accepted invariant map to at least one proof obligation?

### R03 — No Orphan Proof Obligation

Does every primary proof obligation map back to exactly one accepted source
invariant?

### R04 — OPEN Initial State

Do all proof obligations begin OPEN?

### R05 — Invariant / Proof Separation

Does invariant admission remain distinct from proof discharge?

### R06 — Evidence / Proof Separation

Does evidence remain distinct from proof?

### R07 — Scope Integrity

Must every proof discharge preserve an explicit bounded scope?

### R08 — Formal / Empirical Separation

Are testing, empirical support, formal proof, runtime demonstration, and
reconstruction kept distinct?

### R09 — Partial Discharge

Can a partially discharged obligation preserve an undischarged remainder?

### R10 — Counterexample Integrity

Must valid counterexamples remain visible?

### R11 — No Architectural Mutation

Can proof difficulty expose an architectural defect without silently weakening
the invariant?

### R12 — Forward Gate

Does ARCH-13 stop before threat / failure taxonomy?

## Current State

EMAH-ARCH-13-P01:

**SUBMITTED FOR ACCEPTANCE REVIEW**

EMAH-ARCH-14:

**NOT YET AUTHORIZED**

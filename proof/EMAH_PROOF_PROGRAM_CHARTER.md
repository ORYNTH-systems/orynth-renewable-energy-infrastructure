# EMAH / AHME Proof Program Charter

Status: **EMAH-PROOF-00 / ACCEPTED**

## Purpose

The EMAH / AHME Proof Program exists to evaluate and, where justified,
discharge the 65 proof obligations defined by the frozen EMAH / AHME
architecture.

The proof program is subordinate to the frozen architecture baseline.

It may not silently alter, weaken, reinterpret, replace, or erase a frozen
invariant or proof obligation in order to obtain a favorable result.

## Frozen Architecture Authority

Architecture freeze tag:

emah-architecture-v0.1.0-freeze

Frozen source commit:

5ef320941622c4ddfc48519d7e1ac89d55596e3c

Frozen source tree:

ca2d8f28c924e2e27d7877db71e3ff9dc71acb73

Freeze manifest SHA-256:

812ada1412458f40691935d698ef485ec797691b3b649e72b58920f0974d5525

## Initial Corpus

Total primary proof obligations:

**65**

Initial status:

**65 OPEN**

Families:

- AUTH — 8
- EXE — 10
- REC — 12
- EVD — 12
- OBL — 10
- INT — 5
- FIN — 8

## Proof Program Boundary

The proof program may produce:

- proof analyses;
- formal derivations;
- bounded proofs;
- model-checking artifacts;
- executable verification artifacts;
- counterexamples;
- empirical support;
- test evidence;
- failure records;
- independent-review records;
- discharge recommendations;
- adverse findings.

The proof program does not silently modify frozen architecture.

## Governing Distinctions

**Invariant Exists != Invariant Proven**

**Proof Obligation Defined != Proof Obligation Discharged**

**Evidence Exists != Proof Discharged**

**Test Pass != Formal Proof**

**Bounded Proof != Global Proof**

**Empirical Support != Formal Proof**

**Partial Discharge != Full Discharge**

**Architecture Proof != Implementation Proof**

**Static Verification != Runtime Environment Proof**

**Proof of Version N != Proof of Version N+1**

**Proof Difficulty != Permission to Weaken Invariant**

**Adverse Proof Result != Permission to Erase the Result**

## Fail-Closed Rule

A proof obligation remains OPEN unless its governing discharge standard is
satisfied and an explicit acceptance record changes its status.

Absence of a counterexample is not sufficient for discharge.

Failure to prove is not automatically proof of falsehood.

Discovery of a counterexample must be preserved as an adverse result.

## Frozen-Baseline Rule

Any semantic defect discovered in the frozen architecture must be handled
through the post-freeze amendment boundary.

The proof program itself may not silently repair the frozen architecture.


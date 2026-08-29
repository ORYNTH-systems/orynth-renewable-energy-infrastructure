# EMAH-AUTH-WIT-002 — AUTH Separation Witness

Status: **CANDIDATE / NOT YET ADJUDICATED**

## Bound Proof Obligation

EMAH-PO-AUTH-002

## Frozen Invariant

EMAH-INV-AUTH-002

Authority != Admissibility

## Witness Class

CONSTRUCTIVE SEPARATION

## Left-Hand Condition

Authority binding is valid.

## Right-Hand Non-Establishment

Current transition admissibility is independently denied.

## Architecture-Admitted State

AUTH_VALID + ADM_INADMISSIBLE

## Separation Claim

Valid authority can coexist with current inadmissibility.

## External Ownership / Dependency

UAA authority + AOMS current-state admissibility

## Candidate Proof Form

Let L denote the left-hand condition and R the right-hand authority condition.

The witness proposes an architecture-admitted state W such that:

L(W) = true

while:

R(W) != established

Therefore the presence of L alone is insufficient to constitute or establish R.

This is a candidate bounded architectural separation witness.

## Boundary

This artifact does not itself discharge EMAH-PO-AUTH-002.

Witness Constructed != Witness Accepted

Witness Accepted != Global Proof

Architectural Separation != Runtime Enforcement

Frozen Architecture != Implementation

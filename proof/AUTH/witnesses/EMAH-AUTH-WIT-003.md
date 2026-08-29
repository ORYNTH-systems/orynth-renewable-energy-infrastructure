# EMAH-AUTH-WIT-003 — AUTH Separation Witness

Status: **CANDIDATE / NOT YET ADJUDICATED**

## Bound Proof Obligation

EMAH-PO-AUTH-003

## Frozen Invariant

EMAH-INV-AUTH-003

Prior Authority != Current Execution Authority

## Witness Class

TEMPORAL SEPARATION

## Left-Hand Condition

A valid authority relation existed at an earlier time.

## Right-Hand Non-Establishment

Current execution authority is not established at the later execution boundary.

## Architecture-Admitted State

AUTH_EXPIRED

## Separation Claim

Prior validity can coexist with present expiration.

## External Ownership / Dependency

UAA authority + EIP continuity

## Candidate Proof Form

Let L denote the left-hand condition and R the right-hand authority condition.

The witness proposes an architecture-admitted state W such that:

L(W) = true

while:

R(W) != established

Therefore the presence of L alone is insufficient to constitute or establish R.

This is a candidate bounded architectural separation witness.

## Boundary

This artifact does not itself discharge EMAH-PO-AUTH-003.

Witness Constructed != Witness Accepted

Witness Accepted != Global Proof

Architectural Separation != Runtime Enforcement

Frozen Architecture != Implementation

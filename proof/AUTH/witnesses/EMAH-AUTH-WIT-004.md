# EMAH-AUTH-WIT-004 — AUTH Separation Witness

Status: **CANDIDATE / NOT YET ADJUDICATED**

## Bound Proof Obligation

EMAH-PO-AUTH-004

## Frozen Invariant

EMAH-INV-AUTH-004

Prior Authorization != Present Execution Eligibility

## Witness Class

TEMPORAL / CURRENT-STATE SEPARATION

## Left-Hand Condition

A prior authorization record exists.

## Right-Hand Non-Establishment

Present execution eligibility is not established.

## Architecture-Admitted State

ADM_RECONCILIATION_REQUIRED

## Separation Claim

Historical authorization can coexist with a present requirement for current-state reconciliation.

## External Ownership / Dependency

UAA prior authorization + AOMS present eligibility

## Candidate Proof Form

Let L denote the left-hand condition and R the right-hand authority condition.

The witness proposes an architecture-admitted state W such that:

L(W) = true

while:

R(W) != established

Therefore the presence of L alone is insufficient to constitute or establish R.

This is a candidate bounded architectural separation witness.

## Boundary

This artifact does not itself discharge EMAH-PO-AUTH-004.

Witness Constructed != Witness Accepted

Witness Accepted != Global Proof

Architectural Separation != Runtime Enforcement

Frozen Architecture != Implementation

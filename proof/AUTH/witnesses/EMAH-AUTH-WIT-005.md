# EMAH-AUTH-WIT-005 — AUTH Separation Witness

Status: **CANDIDATE / NOT YET ADJUDICATED**

## Bound Proof Obligation

EMAH-PO-AUTH-005

## Frozen Invariant

EMAH-INV-AUTH-005

Credential Possession != Authority

## Witness Class

CONSTRUCTIVE SEPARATION

## Left-Hand Condition

A credential, key, token, or equivalent authority-related artifact is possessed.

## Right-Hand Non-Establishment

Valid governing authority is not thereby established.

## Architecture-Admitted State

AUTH_REVOKED

## Separation Claim

Credential possession can persist after the authority it once supported has been revoked.

## External Ownership / Dependency

UAA authority binding / revocation

## Candidate Proof Form

Let L denote the left-hand condition and R the right-hand authority condition.

The witness proposes an architecture-admitted state W such that:

L(W) = true

while:

R(W) != established

Therefore the presence of L alone is insufficient to constitute or establish R.

This is a candidate bounded architectural separation witness.

## Boundary

This artifact does not itself discharge EMAH-PO-AUTH-005.

Witness Constructed != Witness Accepted

Witness Accepted != Global Proof

Architectural Separation != Runtime Enforcement

Frozen Architecture != Implementation

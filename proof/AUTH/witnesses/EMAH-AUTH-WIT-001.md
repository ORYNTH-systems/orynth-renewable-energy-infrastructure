# EMAH-AUTH-WIT-001 — AUTH Separation Witness

Status: **CANDIDATE / NOT YET ADJUDICATED**

## Bound Proof Obligation

EMAH-PO-AUTH-001

## Frozen Invariant

EMAH-INV-AUTH-001

Capability != Authority

## Witness Class

CONSTRUCTIVE SEPARATION

## Left-Hand Condition

A subject or interface is technically capable of presenting or causing an execution attempt.

## Right-Hand Non-Establishment

Authority is not thereby established.

## Architecture-Admitted State

AUTH_UNRESOLVED

## Separation Claim

Technical capability can be present while authority remains unresolved.

## External Ownership / Dependency

UAA capability/authority separation

## Candidate Proof Form

Let L denote the left-hand condition and R the right-hand authority condition.

The witness proposes an architecture-admitted state W such that:

L(W) = true

while:

R(W) != established

Therefore the presence of L alone is insufficient to constitute or establish R.

This is a candidate bounded architectural separation witness.

## Boundary

This artifact does not itself discharge EMAH-PO-AUTH-001.

Witness Constructed != Witness Accepted

Witness Accepted != Global Proof

Architectural Separation != Runtime Enforcement

Frozen Architecture != Implementation

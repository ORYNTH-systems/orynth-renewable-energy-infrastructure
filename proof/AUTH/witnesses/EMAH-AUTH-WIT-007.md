# EMAH-AUTH-WIT-007 — AUTH Separation Witness

Status: **REPAIRED CANDIDATE / NOT YET RE-ADJUDICATED**

## Bound Proof Obligation

EMAH-PO-AUTH-007

## Frozen Invariant

EMAH-INV-AUTH-007

Evidence != Authority

## Witness Class

EVIDENCE / AUTHORITY TYPE-BOUNDARY SEPARATION

## Left-Hand Condition

Authority-related evidence is present.

## Right-Hand Non-Establishment

Valid authority remains independently unresolved or disputed.

## Architecture-Admitted State

EVD_PRESENT + AUTH_DISPUTED

## Separation Claim

Evidence may exist while the authority determination remains disputed.

## Frozen Support

The frozen architecture explicitly provides:

EVD_PRESENT

AUTH_DISPUTED

and states:

EVD_PRESENT does not imply AUTH_VALID.

The evidence architecture separately preserves:

Authority Evidence != Authority

## Candidate Proof Form

Let E(W) := EVD_PRESENT.

Let A(W) := AUTH_VALID.

Construct W such that:

E(W) = true

while:

authority_state(W) = AUTH_DISPUTED

Therefore:

E(W) does not imply A(W).

Both sides of the separation are explicitly instantiated.

## Boundary

Evidence Present != Authority Established

Witness Repaired != Witness Accepted

This repaired witness does not discharge EMAH-PO-AUTH-007.

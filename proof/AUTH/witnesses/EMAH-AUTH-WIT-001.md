# EMAH-AUTH-WIT-001 — AUTH Separation Witness

Status: **REPAIRED CANDIDATE / NOT YET RE-ADJUDICATED**

## Bound Proof Obligation

EMAH-PO-AUTH-001

## Frozen Invariant

EMAH-INV-AUTH-001

Capability != Authority

## Witness Class

CONSTRUCTIVE / CROSS-DIMENSIONAL SEPARATION

## Left-Hand Condition

The governed system is command-capable.

## Right-Hand Non-Establishment

Valid authority is not thereby established.

## Architecture-Admitted State

CTL_COMMAND_CAPABLE + AUTH_UNRESOLVED

## Separation Claim

Command capability can be present while valid authority remains unresolved.

## Frozen Support

The frozen architecture states that CTL_COMMAND_CAPABLE does not imply
AUTH_VALID.

## External Ownership / Dependency

Generic authority semantics remain owned by UAA.

EMAH supplies the energy-domain control-capability condition and consumes the
upstream authority result.

## Candidate Proof Form

Let L(W) := CTL_COMMAND_CAPABLE.

Let R(W) := AUTH_VALID.

Construct W such that:

L(W) = true

and:

authority_state(W) = AUTH_UNRESOLVED

Therefore:

L(W) does not imply R(W).

The capability-side and authority-side conditions are both instantiated in the
same bounded architecture witness.

## Boundary

This repaired witness does not discharge EMAH-PO-AUTH-001.

Witness Repaired != Witness Accepted

Architectural Separation != Runtime Enforcement

# EMAH-AUTH-WIT-003 — AUTH Separation Witness

Status: **REPAIRED CANDIDATE / NOT YET RE-ADJUDICATED**

## Bound Proof Obligation

EMAH-PO-AUTH-003

## Frozen Invariant

EMAH-INV-AUTH-003

Prior Authority != Current Execution Authority

## Witness Class

TEMPORAL SEPARATION

## Temporal Witness

### t0 — Prior State

AUTH_VALID

The authority relation is valid within its applicable temporal boundary.

### t1 — Current Execution Boundary

AUTH_EXPIRED

The prior authority relation no longer satisfies the current temporal
authority condition.

## Separation Claim

A valid authority relation at t0 does not itself establish current execution
authority at t1.

## Frozen Support

The frozen authority envelope contains a temporal_bound.

The frozen authority model requires authority to remain within temporal scope
and explicitly preserves:

Prior Authority != Current Execution Authority

## External Ownership / Dependency

UAA owns generic execution authority.

EIP owns execution-time continuity semantics where applicable.

## Candidate Proof Form

Let A(t0) = AUTH_VALID.

Let A(t1) = AUTH_EXPIRED.

Let t1 lie outside the authority temporal_bound applicable at t0.

Then:

PriorAuthority(t0) = true

while:

CurrentExecutionAuthority(t1) != established

Therefore prior validity is insufficient for current execution authority.

## Boundary

This repaired witness does not claim that all authority expiration semantics
are owned by EMAH.

This repaired witness does not discharge EMAH-PO-AUTH-003.

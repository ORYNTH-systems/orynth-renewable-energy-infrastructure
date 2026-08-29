# EMAH-AUTH-WIT-005 — AUTH Separation Witness

Status: **REPAIRED CANDIDATE / UAA-DEPENDENT / NOT YET RE-ADJUDICATED**

## Bound Proof Obligation

EMAH-PO-AUTH-005

## Frozen Invariant

EMAH-INV-AUTH-005

Credential Possession != Authority

## Witness Class

EXTERNAL-PREMISE / AUTHORITY-RESULT SEPARATION

## External Premise

UAA-supplied premise:

CredentialPossessed = true

The credential, key, token, or equivalent authority-related artifact remains
in the possession of the presenting subject.

## EMAH-Observed Authority Result

AUTH_REVOKED

## Separation Claim

Continued credential possession does not restore or constitute valid
authority after the authority relation has been revoked.

## Frozen Support

The frozen architecture explicitly preserves:

Possession of Credential != Authority

Possession of Key != Authority

The frozen architecture also includes AUTH_REVOKED as an authority-reference
state.

## Ownership Boundary

Credential semantics are not silently canonized as an EMAH-owned state
dimension.

Credential possession is an explicit inherited/external UAA premise.

EMAH consumes the resulting authority status.

## Candidate Proof Form

Let C := CredentialPossessed.

Assume:

C = true

and:

authority_state = AUTH_REVOKED

Then valid authority is not established despite possession of the credential.

Therefore:

CredentialPossession does not imply AUTH_VALID.

## Boundary

External Premise != EMAH-Owned Primitive

Credential Possession != Authority

This repaired witness does not discharge EMAH-PO-AUTH-005.

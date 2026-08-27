# EMAH — UAA Interface

## Status

**EMAH-ARCH-11 / ACCEPTED**

## External Owner

UAA

## Consumed Semantics

EMAH consumes:

- capability / authority separation;
- generic execution authority;
- authority binding;
- revocation / expiration relevance;
- fail-closed execution;
- admissibility-before-authority where established;
- no-effect-on-block semantics.

## EMAH Inputs

EMAH may supply:

- transition identity;
- subject reference;
- resource reference;
- energy-state context;
- transition scope;
- physical-effect context.

## EMAH Outputs

EMAH may consume or preserve authority-reference results such as:

- valid;
- invalid;
- expired;
- revoked;
- scope mismatch;
- continuity unverified.

## Prohibited Inferences

**Capability != Authority**

**Credential Possession != Authority**

**Control Access != Authority**

**Physical Availability != Authority**

**Evidence != Authority**

## Ownership Rule

EMAH does not redefine generic UAA authority.



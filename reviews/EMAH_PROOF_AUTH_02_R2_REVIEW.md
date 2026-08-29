# EMAH-PROOF-AUTH-02-R2 — Complete Authority Witness Re-Adjudication

## Disposition

**ACCEPTED — COMPLETE AUTH WITNESS SET**

**AUTH PROOF OBLIGATIONS DISCHARGED: 0 / 8**

## Frozen Architecture

Freeze tag:

emah-architecture-v0.1.0-freeze

Frozen source commit:

5ef320941622c4ddfc48519d7e1ac89d55596e3c

Frozen source tree:

ca2d8f28c924e2e27d7877db71e3ff9dc71acb73

## Accepted Witnesses

### EMAH-AUTH-WIT-001

**ACCEPTABLE**

CTL_COMMAND_CAPABLE + AUTH_UNRESOLVED explicitly instantiates capability
without valid authority.

### EMAH-AUTH-WIT-002

**ACCEPTABLE**

AUTH_VALID + ADM_INADMISSIBLE explicitly separates authority from current
admissibility.

### EMAH-AUTH-WIT-003

**ACCEPTABLE**

The repaired temporal witness explicitly establishes:

t0: AUTH_VALID

t1: AUTH_EXPIRED

within the frozen temporal authority-envelope boundary.

### EMAH-AUTH-WIT-004

**ACCEPTABLE — DEPENDENCY-BOUNDED**

Prior authorization remains insufficient for present execution eligibility.

Present execution eligibility remains externally owned by AOMS under the
accepted interface boundary.

### EMAH-AUTH-WIT-005

**ACCEPTABLE — UAA-DEPENDENT**

Credential possession is represented as an explicit externally supplied UAA
premise.

EMAH consumes AUTH_REVOKED and does not claim generic credential ownership.

### EMAH-AUTH-WIT-006

**ACCEPTABLE**

Physical availability and authority are explicitly separated.

PHY_AVAILABLE does not establish AUTH_VALID.

### EMAH-AUTH-WIT-007

**ACCEPTABLE**

EVD_PRESENT + AUTH_DISPUTED explicitly instantiates evidence presence while
valid authority remains independently unresolved.

### EMAH-AUTH-WIT-008

**ACCEPTABLE**

OBL_OPEN + AUTH_UNRESOLVED explicitly separates an outstanding obligation
from valid execution authority.

## R2 Finding

All eight AUTH separation witnesses are now semantically sufficient as
bounded architecture-level witness artifacts for the frozen EMAH v0.1.0
architecture.

This acceptance establishes only witness sufficiency.

It does not itself discharge any primary proof obligation.

## Governing Boundary

Witness Set Accepted != Proof Obligations Discharged

Constructive Countermodel != Implementation Verification

Architecture-Level Separation != Runtime Enforcement

UAA-Dependent Witness != UAA Primitive Proven By EMAH

AOMS-Dependent Witness != AOMS Primitive Proven By EMAH

Bounded Proof Artifact != Global Theorem

## Next Program

EMAH-PROOF-AUTH-03 shall define the discharge standard and determine whether
the accepted witness set, frozen prohibitions, traceability records, and
architecture constraints together are sufficient to discharge each AUTH
proof obligation.

Until that determination:

**8 OPEN / 0 DISCHARGED**

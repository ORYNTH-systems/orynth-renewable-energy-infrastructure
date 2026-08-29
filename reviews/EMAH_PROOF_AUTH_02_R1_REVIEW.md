# EMAH-PROOF-AUTH-02-R1 — Authority Witness Adjudication

## Disposition

**REVISION REQUIRED**

**AUTH PROOF OBLIGATIONS DISCHARGED: 0 / 8**

## Frozen Architecture

Freeze tag:

emah-architecture-v0.1.0-freeze

Frozen source commit:

5ef320941622c4ddfc48519d7e1ac89d55596e3c

Frozen source tree:

ca2d8f28c924e2e27d7877db71e3ff9dc71acb73

## Witness Adjudications

### EMAH-AUTH-WIT-001

**REVISION REQUIRED**

The candidate establishes an authority-side state of AUTH_UNRESOLVED but does
not instantiate the capability-side condition in the witness state.

Required repair:

Use a frozen capability-bearing condition such as:

CTL_COMMAND_CAPABLE + AUTH_UNRESOLVED

The frozen architecture explicitly preserves the non-implication from command
capability to valid authority.

### EMAH-AUTH-WIT-002

**ACCEPTABLE AS CONSTRUCTED**

AUTH_VALID + ADM_INADMISSIBLE directly instantiates the required authority /
admissibility separation.

No proof status is promoted by this finding.

### EMAH-AUTH-WIT-003

**REVISION REQUIRED**

AUTH_EXPIRED establishes the current authority condition but does not itself
instantiate the prior-valid-authority condition.

Required repair:

Construct an explicit temporal witness:

t0: AUTH_VALID
t1: AUTH_EXPIRED

with the authority temporal boundary establishing that prior validity does not
constitute current execution authority.

### EMAH-AUTH-WIT-004

**ACCEPTABLE AS CONSTRUCTED — DEPENDENCY-BOUNDED**

The frozen architecture expressly preserves:

Prior Authorization != Present Execution Eligibility

and assigns present execution eligibility to AOMS under the inherited
interface boundary.

ADM_RECONCILIATION_REQUIRED supplies a present-state condition in which prior
authorization is insufficient.

No claim is made that EMAH owns generic present-execution-eligibility
semantics.

### EMAH-AUTH-WIT-005

**REVISION REQUIRED — UAA DEPENDENCY**

AUTH_REVOKED establishes the authority-side condition, but credential
possession is not an EMAH state coordinate.

Required repair:

Represent credential possession as an explicit externally supplied UAA witness
premise while retaining AUTH_REVOKED as the EMAH-observed authority result.

The proof must not imply that EMAH owns generic credential semantics.

### EMAH-AUTH-WIT-006

**ACCEPTABLE AS CONSTRUCTED**

The witness directly separates physical and authority dimensions.

The frozen architecture explicitly prohibits:

PHY_AVAILABLE -> AUTH_VALID

AVAILABLE + AUTH_UNRESOLVED is therefore sufficient as a bounded
architectural separation witness.

### EMAH-AUTH-WIT-007

**REVISION REQUIRED**

The witness states that evidence is present but only instantiates
AUTH_DISPUTED.

Required repair:

Instantiate both dimensions explicitly:

EVD_PRESENT + AUTH_DISPUTED

The frozen architecture explicitly provides EVD_PRESENT and states that
EVD_PRESENT does not imply AUTH_VALID.

### EMAH-AUTH-WIT-008

**ACCEPTABLE AS CONSTRUCTED**

OBL_OPEN + AUTH_UNRESOLVED directly instantiates the required obligation /
authority separation.

The frozen obligation lifecycle expressly preserves:

OBL_OPEN != AUTH_VALID

## R1 Summary

Accepted as bounded witness candidates:

- EMAH-AUTH-WIT-002
- EMAH-AUTH-WIT-004
- EMAH-AUTH-WIT-006
- EMAH-AUTH-WIT-008

Revision required:

- EMAH-AUTH-WIT-001
- EMAH-AUTH-WIT-003
- EMAH-AUTH-WIT-005
- EMAH-AUTH-WIT-007

## Governing Boundary

Witness Acceptable != Proof Obligation Discharged

Dependency-Bounded Witness != External Primitive Proven

Architectural Separation != Runtime Enforcement

Countermodel Sufficiency Within Frozen Scope != Global Proof

## Next Required Pass

EMAH-PROOF-AUTH-02-P02 shall repair only WIT-001, WIT-003, WIT-005, and
WIT-007.

Frozen architecture SHALL NOT be modified.

**8 OPEN / 0 DISCHARGED**

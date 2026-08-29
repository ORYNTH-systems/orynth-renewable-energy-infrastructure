# EMAH-PROOF-AUTH-01-R1 — Authority Proposition Adjudication

## Disposition

**ACCEPTED — AUTH PROPOSITIONS PROOF-READY**

**AUTH PROOF OBLIGATIONS DISCHARGED: 0 / 8**

## Frozen Architecture

Freeze tag:

emah-architecture-v0.1.0-freeze

Frozen source commit:

5ef320941622c4ddfc48519d7e1ac89d55596e3c

Frozen source tree:

ca2d8f28c924e2e27d7877db71e3ff9dc71acb73

## Semantic Finding

All eight frozen AUTH propositions are sufficiently specified for bounded
proof-method assignment when the frozen `!=` distinction is interpreted
as an architectural non-collapse / separability requirement.

The frozen wording is not modified.

For each proposition, proof must establish that the left-hand condition is
not sufficient, by itself, to constitute or establish the right-hand
condition.

A constructive architecture-admitted witness state may establish the
required separation.

## Individual Adjudications

1. EMAH-PO-AUTH-001 — Capability != Authority
   - PROOF-READY
   - constructive separation witness

2. EMAH-PO-AUTH-002 — Authority != Admissibility
   - PROOF-READY
   - constructive separation witness

3. EMAH-PO-AUTH-003 — Prior Authority != Current Execution Authority
   - PROOF-READY
   - temporal separation witness

4. EMAH-PO-AUTH-004 — Prior Authorization != Present Execution Eligibility
   - PROOF-READY
   - temporal/current-state separation witness

5. EMAH-PO-AUTH-005 — Credential Possession != Authority
   - PROOF-READY
   - constructive separation witness

6. EMAH-PO-AUTH-006 — Physical Availability != Authority
   - PROOF-READY
   - cross-dimensional separation witness

7. EMAH-PO-AUTH-007 — Evidence != Authority
   - PROOF-READY
   - cross-family overlap preserved
   - evidence/authority type-boundary witness

8. EMAH-PO-AUTH-008 — Obligation != Authority
   - PROOF-READY
   - cross-family overlap preserved
   - obligation/authority type-boundary witness

## Cross-Family Findings

AUTH-007 overlaps an EVD-family authority firewall.

AUTH-008 overlaps an OBL-family authority firewall.

Neither overlap is treated as a defect requiring frozen-architecture
amendment. The AUTH instances preserve the authority-family non-collapse
boundary.

## R1 Boundary

R1 accepts proposition intake and proof-method assignment only.

R1 does not:

- execute any proof;
- accept any witness;
- discharge any proof obligation;
- change any proof status from OPEN;
- modify a frozen invariant;
- claim formal verification;
- claim runtime enforcement.

## Next Authorized Pass

EMAH-PROOF-AUTH-02 may begin construction and adjudication of the first
AUTH separation witnesses.

**8 OPEN / 0 DISCHARGED**

# EMAH — AOMS Interface

## Status

**EMAH-ARCH-11 / ACCEPTED**

## External Owner

AOMS

## Consumed Semantics

EMAH consumes:

- current-state reconciliation;
- comparison between prior authorized state and present state;
- present execution eligibility determination where established.

## EMAH Inputs

EMAH supplies energy-domain state context including relevant coordinates from:

`Sigma(E) = (P, A, D, C, F, V, R, H, K)`

Only material coordinates are required for a particular transition.

## Governing Distinctions

**Prior Authorization != Present Execution Eligibility**

**Historical Admissibility != Current Admissibility**

**State Drift != Automatic Denial**

**State Drift != Automatic Admission**

## Ownership Rule

EMAH does not redefine AOMS current-state reconciliation.



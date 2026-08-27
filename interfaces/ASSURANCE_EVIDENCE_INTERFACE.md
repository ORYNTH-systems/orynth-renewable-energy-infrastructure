# EMAH — Assurance / Evidence Interface

## Status

**EMAH-ARCH-11-P01 / CANDIDATE**

This interface covers evidence, audit, integrity-assessment, and assurance
surfaces without elevating any draft or layer-specific record into generic
semantic ownership.

## Consumed / Produced Context

EMAH may expose:

- state records;
- transition records;
- authority references;
- admissibility results;
- execution records;
- physical-effect records;
- AHME recovery lineage;
- obligation records.

Assurance surfaces may inspect these records.

## Governing Distinctions

**Auditability != Runtime Authority**

**Evidence != Authority**

**Integrity Assessment != Authority**

**Assurance Result != Execution Authority**

**Tamper Evidence != Legitimate Authorization**

A system may possess a complete, tamper-evident execution record for an
execution that should never have been authorized.

## Proof / Assurance Boundary

An assurance result may support confidence in a bounded claim.

It does not enlarge that claim.

Therefore:

**Assurance Scope != Global System Validity**

## Ownership Rule

EMAH does not infer generic semantic ownership from an assurance interface.


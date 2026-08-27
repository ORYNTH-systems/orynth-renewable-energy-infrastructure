# EMAH — Proof Scope Model

## Status

**EMAH-ARCH-13-P01 / CANDIDATE**

Every proof obligation and discharge claim must preserve explicit scope.

---

# 1. Candidate Scope Dimensions

Proof scope may include:

- invariant;
- transition type;
- object type;
- state dimension;
- implementation;
- runtime profile;
- execution boundary;
- physical observation boundary;
- temporal interval;
- interface version;
- dependency version;
- deployment configuration;
- recovery profile.

---

# 2. Scope Non-Expansion

A successful proof under one bounded scope does not automatically apply to a
larger scope.

Therefore:

**Bounded Proof != Global Proof**

---

# 3. Implementation Separation

A mathematical architecture proposition and an implementation-conformance
claim are distinct.

Therefore:

**Architecture Proof != Implementation Proof**

---

# 4. Runtime Separation

A static proof does not automatically establish all runtime environmental
properties.

Therefore:

**Static Verification != Runtime Environment Proof**

---

# 5. Version Boundary

Proof against one accepted version does not automatically prove a later
modified version.

Therefore:

**Proof of Version N != Proof of Version N+1**


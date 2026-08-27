# EMAH — Cross-Domain Interface Architecture

## Status

**EMAH-ARCH-11-P01 / CANDIDATE**

This architecture defines explicit interfaces between EMAH / AHME and other
ORYNTH architectures.

An interface does not transfer semantic ownership.

---

# 1. Governing Distinctions

**Interface != Inheritance**

**Inheritance != Ownership**

**Reference != Ownership**

**Dependency != Ownership**

**Interoperability != Primitive Duplication**

**Interface Presence != Semantic Transfer**

---

# 2. Interface Rule

Each cross-domain interface must explicitly state:

- external architecture;
- external semantic owner;
- EMAH-consumed primitive or result;
- EMAH-produced input or output;
- prohibited inference;
- unresolved ownership where applicable.

---

# 3. No Silent Duplication

EMAH SHALL NOT create duplicate generic primitives merely because an
interface requires them.

Therefore:

**Need for Primitive != EMAH Ownership of Primitive**

---

# 4. Upstream / Downstream Distinction

An upstream semantic dependency means EMAH consumes semantics defined
elsewhere.

A downstream consumer may consume EMAH outputs.

Neither direction transfers ownership by itself.

---

# 5. Authority Boundary

UAA remains owner of generic execution-authority semantics.

EMAH consumes authority references and bounded authority results.

Therefore:

**EMAH Authority Reference != EMAH Ownership of Generic Authority**

---

# 6. Admissibility Boundary

AOMS and UAA remain authoritative for current-state reconciliation and
generic admissibility semantics within their established scope.

EMAH supplies energy-domain state and transition context.

Therefore:

**Energy-Domain State Input != Ownership of Generic Admissibility**

---

# 7. Continuity Boundary

EIP owns execution-time rule / identity continuity within its established
scope.

IPT owns preservation / recoverability distinctions within its established
scope.

EMAH / AHME own energy-domain continuity and recovery semantics.

Therefore:

**Energy Continuity != Rule Identity Continuity**

and:

**Energy Recovery != IPT Recoverability Evaluation**

---

# 8. Proof of Block Boundary

Proof of Block owns governed refusal evidence.

UAA owns blocking / execution-prevention semantics.

Therefore:

**Execution Block != Proof of Block**

EMAH may reference both without merging them.

---

# 9. Financial Boundary

Financial Infrastructure / UES own economic-effect, settlement,
compensation, reversal, and financial finality semantics.

EMAH owns physical-energy effect semantics.

Therefore:

**Physical Effect != Economic Effect**

**Physical Delivery != Financial Settlement**

**Physical Partial Effect != Financial Partial Effect**

---

# 10. Assurance / Evidence Boundary

Evidence, audit, integrity-assessment, and assurance surfaces may inspect or
support EMAH state.

They do not create authority.

Therefore:

**Assurance != Authority**

**Auditability != Runtime Authority**

**Evidence != Authority**

---

# 11. Generic Unresolved Ownership

ARCH-11 does not resolve generic ownership for:

- Principal;
- Jurisdiction;
- AutonomousAgent;
- Obligation.

Any such ownership remains explicit and unresolved unless separately
admitted by architecture.

---

# 12. Forward Boundary

ARCH-11 establishes interface architecture only.

Invariant synthesis remains reserved for:

**EMAH-ARCH-12 — Invariants**


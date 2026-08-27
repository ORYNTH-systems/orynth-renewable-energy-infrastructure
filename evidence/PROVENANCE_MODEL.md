# EMAH — Provenance Model

## Status

**EMAH-ARCH-09-P01 / CANDIDATE**

Provenance identifies where a record, observation, claim, or evidence item
came from and how it relates to prior records.

---

# 1. Governing Rule

**Provenance != Authority**

**Provenance != Truth**

**Provenance != Admissibility**

A perfectly traceable record can still represent an unauthorized,
inadmissible, incorrect, or incomplete event.

---

# 2. Provenance Fields

A candidate provenance record may include:

- evidence identifier;
- source identifier;
- source type;
- generating process;
- observation boundary;
- timestamp;
- prior-record references;
- object reference;
- transition reference;
- execution reference;
- effect reference;
- recovery reference where applicable;
- integrity reference.

---

# 3. Source Identity

Source identity must remain explicit.

Examples may include:

- meter;
- sensor;
- control interface;
- upstream authority system;
- execution runtime;
- recovery process;
- certificate issuer;
- financial system.

Source identity does not establish source correctness.

---

# 4. Derived Records

A derived record must preserve its source references.

Therefore:

**Derived Evidence != Independent Observation**

---

# 5. Broken Provenance

Where required lineage cannot be established, provenance must remain
explicitly impaired.

No missing chain may silently be reconstructed as though preserved.

Therefore:

**Reconstructed Provenance != Preserved Provenance**

---

# 6. Certificate Boundary

Certificate provenance may establish who issued a certificate and under
what recorded basis.

It does not establish persistent physical energy identity.


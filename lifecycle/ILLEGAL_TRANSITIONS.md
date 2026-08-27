# EMAH — Structurally Prohibited Transitions

## Status

**EMAH-ARCH-05 / ACCEPTED**

This registry identifies transitions that P01 explicitly does not admit.

A prohibited structural transition is not repaired merely by the presence
of authority, payment, evidence, or technical capability.

---

# 1. Physical Lifecycle Bypasses

The following direct edges are prohibited in P01:

| ID | Source | Prohibited Target | Reason |
|---|---|---|---|
| EMAH-ILL-001 | PHY_POTENTIAL | PHY_DELIVERED | bypasses realization, availability, and flow |
| EMAH-ILL-002 | PHY_POTENTIAL | PHY_STORED | bypasses physical realization / availability |
| EMAH-ILL-003 | PHY_PRESENT | PHY_DELIVERED | bypasses availability and flow |
| EMAH-ILL-004 | PHY_AVAILABLE | PHY_DELIVERED | bypasses flow |
| EMAH-ILL-005 | PHY_STORED | PHY_DELIVERED | bypasses release and flow |
| EMAH-ILL-006 | PHY_LOST | PHY_AVAILABLE | loss cannot silently recreate availability |
| EMAH-ILL-007 | PHY_DEPLETED | PHY_AVAILABLE | depletion cannot silently recreate energy |
| EMAH-ILL-008 | PHY_RESIDUAL | PHY_AVAILABLE | AHME recovery / requalification cannot be bypassed |
| EMAH-ILL-009 | PHY_IMPAIRED | PHY_AVAILABLE | impairment cannot silently clear itself |

---

# 2. Cross-Dimensional False Transitions

The following forms are not valid EMAH transitions:

| ID | False Edge | Reason |
|---|---|---|
| EMAH-ILL-X01 | PHY_AVAILABLE -> AUTH_VALID | physical state cannot create authority |
| EMAH-ILL-X02 | AUTH_VALID -> ADM_ADMISSIBLE | authority does not automatically create admissibility |
| EMAH-ILL-X03 | CTL_COMMAND_CAPABLE -> AUTH_VALID | capability does not create authority |
| EMAH-ILL-X04 | CTL_COMMAND_PRESENT -> PHY_DELIVERED | command does not prove effect |
| EMAH-ILL-X05 | PHY_DELIVERED -> ECO_SETTLED | physical effect does not create settlement |
| EMAH-ILL-X06 | ECO_SETTLED -> PHY_DELIVERED | settlement does not prove physical effect |
| EMAH-ILL-X07 | EVD_PRESENT -> AUTH_VALID | evidence does not create authority |
| EMAH-ILL-X08 | ATR_SUPPORTED -> PHY_AVAILABLE | attribute state does not create physical state |
| EMAH-ILL-X09 | PHY_RESIDUAL -> REC_RECOVERED | residual state does not equal recovery |
| EMAH-ILL-X10 | REC_RECOVERED -> AUTH_VALID | recovery does not create authority |

---

# 3. AHME Bypass Prohibitions

ARCH-05 does not define the complete AHME transition graph.

However, it explicitly prohibits collapsing:

**Residual -> Recovered**

**Recovered -> Reintegrated**

**Recovered -> Authorized for renewed consequential use**

as automatic direct equivalences.

Detailed AHME transition architecture remains reserved for ARCH-08.

---

# 4. Payment / Record / Certificate Non-Substitution

No transition becomes structurally or operationally valid solely because:

- payment exists;
- settlement exists;
- a meter record exists;
- a certificate exists;
- an environmental attribute exists;
- a command exists;
- a credential exists;
- evidence exists.

These objects and states cannot substitute for the required transition
structure.



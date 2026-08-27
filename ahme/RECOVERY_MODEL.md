# AHME — Recovery Model

## Status

**EMAH-ARCH-08 / ACCEPTED**

---

# 1. Recovery Process

`RecoveryProcess` is the accepted ARCH-03 AHME process object.

Recovery begins only after a recovery-relevant source has been identified.

---

# 2. Candidate Recovery States

ARCH-04 already provides:

- `REC_RECOVERY_PENDING`
- `REC_RECOVERY_IN_PROGRESS`
- `REC_PARTIALLY_RECOVERED`
- `REC_RECOVERED`

ARCH-08 binds those states into AHME recovery semantics.

---

# 3. Recovery Preconditions

Candidate structural recovery preconditions include:

1. source residual or recovery-relevant object identified;
2. recoverability resolved where required;
3. recovery process identified;
4. physical compatibility established;
5. current authority/admissibility separately satisfied where consequential
   execution is required;
6. recovery observation boundary declared.

---

# 4. Partial Recovery

Recovery may itself be partial.

Therefore:

**Recovery Attempt != Full Recovery**

and:

**REC_PARTIALLY_RECOVERED != REC_RECOVERED**

Partial recovery must preserve remaining residual condition.

---

# 5. Recovery / Requalification Separation

Recovery produces a recovered condition.

It does not establish qualification for renewed circulation.

Therefore:

**REC_RECOVERED != REC_REQUALIFIED**

---

# 6. Recovery / Restoration Separation

Recovery does not imply restoration of the prior historical condition.

Therefore:

**REC_RECOVERED != Prior State Restored**

---

# 7. Recovery / Authority Separation

A recovered energy object remains subject to later gates.

Therefore:

**REC_RECOVERED != AUTH_VALID**

**REC_RECOVERED != ADM_ADMISSIBLE**



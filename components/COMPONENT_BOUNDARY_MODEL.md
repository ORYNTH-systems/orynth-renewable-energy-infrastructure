# EMAH — Component Boundary Model

## Status

**EMAH-ARCH-15 / ACCEPTED**

Each reference component SHALL have a declared responsibility boundary.

---

# 1. Governing Rule

**Component Boundary != System Boundary**

A component's correctness within its boundary does not establish whole-system
correctness.

---

# 2. Input Boundary

Each component must declare:

- accepted input object types;
- accepted state dimensions;
- external dependency references;
- required preconditions.

---

# 3. Output Boundary

Each component must declare:

- produced records;
- produced evaluations;
- produced state references;
- produced failure/error states.

---

# 4. Failure Boundary

A component SHALL expose indeterminate or blocked states where required.

Therefore:

**Unknown != Pass**

**Error != Safe by default**

---

# 5. Ownership Boundary

A component may reference semantics owned elsewhere.

It does not gain ownership by consuming them.

Therefore:

**Consumption != Ownership**



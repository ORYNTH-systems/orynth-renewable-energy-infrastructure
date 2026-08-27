# EMAH — Consequential Execution Model

## Status

**EMAH-ARCH-07-P01 / CANDIDATE**

This document defines candidate consequential execution semantics for EMAH.

It begins only after ARCH-06 authority and admissibility gating.

It does not redefine:

- UAA authority;
- UAA fail-closed semantics;
- AOMS current-state reconciliation;
- Financial Infrastructure settlement;
- AHME recovery architecture;
- evidence/provenance architecture.

---

# 1. Governing Execution Chain

EMAH distinguishes:

**Command != Execution Attempt**

**Execution Attempt != Execution**

**Execution != Observed Physical Effect**

**Observed Physical Effect != Financial Settlement**

A command may exist without execution.

An execution attempt may occur without execution completing.

Execution may occur without the intended physical effect being fully realized.

A physical effect may occur without financial settlement.

---

# 2. Candidate Execution Sequence

For a governed transition instance:

1. transition exists structurally;
2. authority is referenced and valid where required;
3. current admissibility is established;
4. execution boundary is reached;
5. command may be presented;
6. execution attempt may begin;
7. execution may succeed, partially complete, fail, abort, or be blocked;
8. observed physical effect is independently determined;
9. intended and observed effects are compared;
10. residual physical effect is classified where present.

This sequence does not imply that every step must occur.

A block may terminate the sequence before execution.

---

# 3. Command

A Command is an instruction presented to a control surface.

Command existence establishes neither:

- valid authority;
- admissibility;
- execution;
- physical effect.

Therefore:

**Command Present != Execution**

---

# 4. Execution Attempt

An Execution Attempt begins when an admitted command reaches the
execution boundary and the system attempts to cause the registered
transition.

An attempt does not prove execution completion.

Therefore:

**Execution Attempt != Execution Completed**

---

# 5. Execution

Execution represents the governed act of attempting to realize the
accepted transition under the applicable execution boundary.

Execution status must remain distinct from observed effect.

Therefore:

**Execution Completed != Intended Effect Fully Realized**

---

# 6. Block

If execution is blocked before consequential effect:

- execution does not proceed;
- governed effect must not be attributed to the blocked execution;
- refusal evidence may later bind to Proof of Block.

ARCH-07 consumes UAA fail-closed semantics.

It does not redefine them.

Therefore:

**Blocked != Failed Execution**

A block prevents governed execution.

A failed execution means execution was attempted but did not produce the
intended result.

---

# 7. Abort

Abort is distinct from block.

A block prevents execution admission or continuation at the governed
execution boundary.

An abort terminates an execution attempt after initiation but before the
intended execution path completes.

Therefore:

**Block != Abort**

---

# 8. Physical Effect Observation

Physical effect must be independently observed.

Execution status alone cannot prove the physical effect.

Therefore:

**Execution Record != Physical Effect Proof**

and:

**Command Record != Physical Effect Proof**

---

# 9. Natural / External Effect Separation

A physical effect observed after a command is not automatically caused by
that command.

EMAH must preserve the possibility of:

- natural physical change;
- external grid influence;
- concurrent system action;
- environmental variation;
- measurement uncertainty;
- unrelated physical effect.

Therefore:

**Temporal Sequence != Causal Attribution**

---

# 10. Financial Boundary

ARCH-07 owns physical-energy execution and physical-effect semantics only.

Financial Infrastructure retains ownership of:

- economic effect;
- settlement;
- financial partial effect;
- compensation;
- reversal;
- financial finality.

Therefore:

**Physical Effect != Economic Effect**

**Physical Partial Effect != Partial Settlement**

---

# 11. Forward Boundary

ARCH-07 may classify physical execution and effect.

It does not yet define the full AHME residual recovery pathway.

That remains reserved for:

**EMAH-ARCH-08 — AHME Recovery / Return Architecture**

Evidence/provenance remains reserved for ARCH-09.


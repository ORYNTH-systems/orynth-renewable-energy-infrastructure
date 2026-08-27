# EMAH — Execution / Effect Invariants

## Status

**EMAH-ARCH-12-P01 / CANDIDATE**

### EMAH-INV-EXE-001

**Command != Execution Attempt**

A command record SHALL NOT be treated as proof that execution began.

### EMAH-INV-EXE-002

**Execution Attempt != Execution Completion**

An initiated execution SHALL NOT be treated as completed merely because it
began.

### EMAH-INV-EXE-003

**Execution != Observed Physical Effect**

Execution state SHALL NOT independently determine physical effect.

### EMAH-INV-EXE-004

**Execution Record != Physical Effect Proof**

Execution evidence SHALL NOT substitute for physical-effect observation.

### EMAH-INV-EXE-005

**Blocked != Failed Execution**

A governed block SHALL remain distinct from an attempted execution failure.

### EMAH-INV-EXE-006

**Block != Abort**

Prevention of execution SHALL remain distinct from termination after attempt
initiation.

### EMAH-INV-EXE-007

**Temporal Sequence != Causal Attribution**

An observed effect occurring after execution SHALL NOT by itself establish
causal attribution.

### EMAH-INV-EXE-008

**No Observation != O = 0**

Missing observation SHALL NOT be interpreted as observed zero physical effect.

### EMAH-INV-EXE-009

**Under-Effect Residual != Over-Effect Excess**

Under-effect and over-effect SHALL remain semantically typed separately.

### EMAH-INV-EXE-010

**Vector Effect != Scalar Effect by default**

A multi-dimensional effect SHALL NOT be collapsed into a scalar without an
explicit aggregation rule.


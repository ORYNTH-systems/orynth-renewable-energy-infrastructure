# EMAH — Execution State Model

## Status

**EMAH-ARCH-07-P01 / CANDIDATE**

These are execution-process states.

They are distinct from the accepted ARCH-04 energy state vector.

## Candidate Execution States

- `EXE_NOT_PRESENTED`
- `EXE_COMMAND_PRESENTED`
- `EXE_GATE_CHECK_REQUIRED`
- `EXE_BLOCKED`
- `EXE_ATTEMPT_INITIATED`
- `EXE_IN_PROGRESS`
- `EXE_ABORTED`
- `EXE_FAILED`
- `EXE_COMPLETED`
- `EXE_OUTCOME_UNRESOLVED`

## Governing Distinctions

**EXE_COMMAND_PRESENTED != EXE_ATTEMPT_INITIATED**

**EXE_ATTEMPT_INITIATED != EXE_COMPLETED**

**EXE_COMPLETED != Physical Effect Fully Realized**

**EXE_BLOCKED != EXE_FAILED**

**EXE_ABORTED != EXE_BLOCKED**

## State Boundary

These values describe execution process only.

They do not independently change:

- physical state;
- authority state;
- admissibility state;
- economic state;
- evidence state;
- recovery state;
- continuity state.


# EMAH — Execution Outcome Registry

## Status

**EMAH-ARCH-07-P01 / CANDIDATE**

| ID | Outcome | Meaning | Effect Inference |
|---|---|---|---|
| EMAH-EXE-001 | NOT_PRESENTED | no command presented | NONE |
| EMAH-EXE-002 | BLOCKED | execution prevented by governed boundary | NO GOVERNED EFFECT ATTRIBUTABLE TO BLOCKED EXECUTION |
| EMAH-EXE-003 | ATTEMPTED | execution attempt initiated | EFFECT UNKNOWN |
| EMAH-EXE-004 | IN_PROGRESS | execution underway | EFFECT NOT FINAL |
| EMAH-EXE-005 | ABORTED | attempt terminated before intended path completed | EFFECT REQUIRES OBSERVATION |
| EMAH-EXE-006 | FAILED | attempted execution did not complete as intended | EFFECT REQUIRES OBSERVATION |
| EMAH-EXE-007 | COMPLETED | execution process completed | EFFECT REQUIRES INDEPENDENT OBSERVATION |
| EMAH-EXE-008 | OUTCOME_UNRESOLVED | execution outcome cannot be determined | EFFECT UNRESOLVED |

## Outcome Count

**8**

## Governing Rule

Execution outcome does not silently determine physical effect.

Therefore:

**Execution Outcome != Physical Effect Classification**

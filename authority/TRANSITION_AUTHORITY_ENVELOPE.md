# EMAH — Transition Authority Envelope

## Status

**EMAH-ARCH-06-P01 / CANDIDATE**

## Envelope

`Γ = (transition_id, subject_ref, resource_ref, authority_ref, scope, temporal_bound, state_snapshot_ref)`

## Field Rules

### transition_id

Must reference an ACCEPTED transition in:

`lifecycle/TRANSITION_REGISTRY.md`

### subject_ref

References an upstream-recognized authority subject.

It does not create a canonical EMAH Principal object.

### resource_ref

Must identify an accepted EMAH object or infrastructure resource within
the transition's declared object scope.

### authority_ref

References upstream authority semantics.

It does not contain self-issued EMAH authority.

### scope

Must be bounded to the consequential action being proposed.

Broad capability shall not substitute for bounded authority.

### temporal_bound

Must preserve the time applicability of the authority.

### state_snapshot_ref

Identifies the state basis used for current-state reconciliation.

A historical snapshot cannot substitute for current-state evaluation.

## Envelope Rule

A syntactically complete envelope is not proof that authority is valid.

Therefore:

**Envelope Complete != Authority Valid**

**Authority Valid != Admissible**

**Admissible != Executed**


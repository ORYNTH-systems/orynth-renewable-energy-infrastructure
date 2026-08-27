# EMAH — Obligation / Interface Invariants

## Status

**EMAH-ARCH-12-P01 / CANDIDATE**

### EMAH-INV-OBL-001

**Obligation != Authority**

Obligation SHALL NOT create authority.

### EMAH-INV-OBL-002

**Obligation != Admissibility**

Obligation SHALL NOT create admissibility.

### EMAH-INV-OBL-003

**Obligation != Settlement**

Obligation existence or satisfaction SHALL remain distinct from financial
settlement.

### EMAH-INV-OBL-004

**Partial Satisfaction != Full Satisfaction**

Partial satisfaction SHALL preserve remaining obligation.

### EMAH-INV-OBL-005

**Obligation Residual != EnergyEffectResidual**

Unsatisfied obligation remainder SHALL remain distinct from physical-effect
residual.

### EMAH-INV-OBL-006

**Obligation Residual != EnergyResidual**

Unsatisfied obligation remainder SHALL remain distinct from AHME energy
residual.

### EMAH-INV-OBL-007

**Compensation Cannot Self-Authorize**

Compensation SHALL NOT create its own execution authority.

### EMAH-INV-OBL-008

**Recovery != Obligation Erasure**

Recovery SHALL NOT silently extinguish an obligation.

### EMAH-INV-OBL-009

**Settlement != Obligation Erasure**

Financial settlement SHALL NOT silently extinguish a physical-domain
obligation.

### EMAH-INV-OBL-010

**Object Transfer != Obligation Transfer**

Transfer of an energy object SHALL NOT independently transfer obligation
responsibility.

### EMAH-INV-INT-001

**Interface != Inheritance**

An interface SHALL NOT be interpreted as inheritance.

### EMAH-INV-INT-002

**Inheritance != Ownership**

Inheritance SHALL NOT independently establish semantic ownership.

### EMAH-INV-INT-003

**Reference != Ownership**

Reference to an external primitive SHALL NOT transfer ownership.

### EMAH-INV-INT-004

**Dependency != Ownership**

Architectural dependency SHALL NOT transfer ownership.

### EMAH-INV-INT-005

**Need for Primitive != EMAH Ownership of Primitive**

Need for an external primitive SHALL NOT justify silent duplication.


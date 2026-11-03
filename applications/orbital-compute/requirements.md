# ORC-001 Preliminary Requirements

**Status:** PRELIMINARY — proposed design inputs; not frozen

| ID | Requirement | Verification method | State |
|---|---|---|---|
| ORC-REQ-001 | The declared flight operating-power source shall be onboard solar generation. | Power architecture review; telemetry and energy accounting | OPEN |
| ORC-REQ-002 | Storage used for normal eclipse or transient operation shall be charged only from admitted solar generation. | Charge-source tracing; power-system test | OPEN |
| ORC-REQ-003 | The power model shall cover every orbit phase, including eclipse seasons and end-of-life array degradation. | Independent orbit/power model review | OPEN |
| ORC-REQ-004 | The power system shall meter array output, storage charge/discharge, compute load, spacecraft support loads, and conversion losses. | Interface inspection; calibrated hardware test | OPEN |
| ORC-REQ-005 | The compute payload shall not start a new consequential workload unless the effect gate receives fresh power, thermal, authority, and subsystem-health state. | State-machine review; fault injection | OPEN |
| ORC-REQ-006 | Loss, staleness, or contradiction of a required sensor input shall block or safely reduce compute. | Fault injection and recovery test | OPEN |
| ORC-REQ-007 | The thermal system shall keep every component within its declared temperature envelope for nominal and peak workload cases. | Thermal model; thermal-vacuum test | OPEN |
| ORC-REQ-008 | The thermal model shall separately account for internal heat generation and absorbed environmental heat. | Model review and test correlation | OPEN |
| ORC-REQ-009 | The radiator shall have a declared view, orientation, emissivity, operating temperature, and end-of-life degradation basis. | Design inspection; material data; thermal analysis | OPEN |
| ORC-REQ-010 | The compute system shall throttle, checkpoint, or shut down before thermal or energy limits are exceeded. | Hardware-in-loop fault testing | OPEN |
| ORC-REQ-011 | Pump or coolant-loop failure shall be detected and shall not authorize continued operation outside verified limits. | Failure injection; leak/flow test | OPEN |
| ORC-REQ-012 | Radiation-induced compute or memory faults shall be detected, attributed, and handled under a declared recovery policy. | Radiation test and error-injection test | OPEN |
| ORC-REQ-013 | A communications outage shall produce the defined local-continue, queue, or shutdown behavior for each workload class. | Network outage and partition tests | OPEN |
| ORC-REQ-014 | Each released workload attempt shall have a unique attempt identity and attributable record of request, authority, state checks, and effect. | Record audit; replay and substitution tests | OPEN |
| ORC-REQ-015 | Flight and ground-test power configurations shall be distinctly identified; ground-supplied power shall not count toward solar-only acceptance. | Configuration audit | OPEN |
| ORC-REQ-016 | External company targets shall not become ORYNTH requirements without explicit adoption and a complete unit/boundary definition. | Change-control review | OPEN |

## Candidate sizing case

Use the public SpaceX AI1 draft figures (120 kW sustained compute, 150 kW peak) as a comparison scenario only. The actual ORC-001 demonstrator level is TBD after the team selects a feasible payload, test capability, and mission purpose. The sizing case must include auxiliary loads and margins before array or radiator dimensions are frozen.

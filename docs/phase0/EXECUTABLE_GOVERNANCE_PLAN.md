Phase 0 – Executable Governance CI Enforcement Plan (Mandatory Appendix)

This document is adopted by ADR-0001 and is binding for Phase 0.

Purpose:
- Convert Phase 0 laws into blocking CI/CD gates (Executable Governance).

Non-negotiable:
- All gates are BLOCKING.
- No exceptions without formal governance decision.

Closure tests (mandatory):
1) Add a runtime file -> CI FAIL
2) Add new SQL file outside canonical -> CI FAIL
3) Modify unauthorized path -> CI FAIL

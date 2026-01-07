PHASE: 0
INTENT: Governance & Enforcement ONLY

ALLOWED:
- Governance definitions
- Contracts (Schema / API / Event / Feature)
- CI Gates (Blocking)

FORBIDDEN:
- ERP or Business Logic
- API Routes
- Events Emit
- UI or Frontend Code
- Non-Canonical Tables

ANY VIOLATION => CI FAIL

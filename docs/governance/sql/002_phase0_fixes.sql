-- PHASE 0
-- Canonical Fixes (Post-Review)
-- This file aligns DB with Phase 0 Build Plan
-- DO NOT EDIT WITHOUT NEW CONTRACT

-- FIX 1: automation_risk_policies
ALTER TABLE governance.automation_risk_policies
DROP COLUMN approval_required;

ALTER TABLE governance.automation_risk_policies
RENAME COLUMN auto_execute TO auto_execute_allowed;

-- FIX 2: architecture_decisions (ADR)
ALTER TABLE governance.architecture_decisions
RENAME TO architecture_decisions_legacy;

CREATE TABLE governance.architecture_decisions (
    id           UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    adr_code     TEXT NOT NULL,
    decision     TEXT NOT NULL,
    rationale    TEXT NOT NULL,
    status       TEXT NOT NULL DEFAULT 'ACCEPTED',
    created_at   TIMESTAMPTZ NOT NULL DEFAULT now(),
    created_by   TEXT NOT NULL,
    version      INTEGER NOT NULL DEFAULT 1,
    owner_module TEXT NOT NULL
);

-- FIX 3: ui_design_assets (Design-only)
ALTER TABLE governance.ui_design_assets
RENAME TO ui_design_assets_legacy;

CREATE TABLE governance.ui_design_assets (
    id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tool          TEXT NOT NULL,
    asset_type    TEXT NOT NULL,
    asset_ref     TEXT NOT NULL,
    asset_version TEXT NOT NULL,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT now(),
    created_by    TEXT NOT NULL,
    status        TEXT NOT NULL DEFAULT 'ACTIVE',
    version       INTEGER NOT NULL DEFAULT 1,
    owner_module  TEXT NOT NULL
);

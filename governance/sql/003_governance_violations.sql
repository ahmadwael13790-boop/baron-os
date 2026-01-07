CREATE TABLE governance_violations (
  id UUID PRIMARY KEY,
  violation_code TEXT NOT NULL,
  rule_code TEXT NOT NULL,
  actor_id TEXT NOT NULL,
  context_json JSONB NOT NULL,
  resolution_status TEXT NOT NULL,
  owner_module TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by TEXT NOT NULL,
  status TEXT NOT NULL,
  version INTEGER NOT NULL
);

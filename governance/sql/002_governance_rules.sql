CREATE TABLE governance_rules (
  id UUID PRIMARY KEY,
  rule_code TEXT NOT NULL,
  rule_description TEXT NOT NULL,
  severity TEXT NOT NULL,
  enforcement_level TEXT NOT NULL,
  owner_module TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by TEXT NOT NULL,
  status TEXT NOT NULL,
  version INTEGER NOT NULL
);

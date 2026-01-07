CREATE TABLE automation_risk_policies (
  id UUID PRIMARY KEY,
  risk_level TEXT NOT NULL,
  description TEXT NOT NULL,
  auto_execute_allowed BOOLEAN NOT NULL,
  owner_module TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by TEXT NOT NULL,
  status TEXT NOT NULL,
  version INTEGER NOT NULL
);

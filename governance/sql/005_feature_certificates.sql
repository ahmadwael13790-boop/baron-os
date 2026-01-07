CREATE TABLE feature_certificates (
  id UUID PRIMARY KEY,
  feature_code TEXT NOT NULL,
  feature_name TEXT NOT NULL,
  allowed_phase INTEGER NOT NULL,
  risk_level TEXT NOT NULL,
  owner_module TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by TEXT NOT NULL,
  status TEXT NOT NULL,
  version INTEGER NOT NULL
);

CREATE TABLE architecture_decisions (
  id UUID PRIMARY KEY,
  adr_code TEXT NOT NULL,
  decision TEXT NOT NULL,
  rationale TEXT NOT NULL,
  status TEXT NOT NULL,
  owner_module TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by TEXT NOT NULL,
  version INTEGER NOT NULL
);

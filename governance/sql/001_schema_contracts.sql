CREATE TABLE schema_contracts (
  id UUID PRIMARY KEY,
  schema_name TEXT NOT NULL,
  contract_version TEXT NOT NULL,
  ddl_hash TEXT NOT NULL,
  tables_list JSONB NOT NULL,
  owner_module TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by TEXT NOT NULL,
  status TEXT NOT NULL,
  version INTEGER NOT NULL
);

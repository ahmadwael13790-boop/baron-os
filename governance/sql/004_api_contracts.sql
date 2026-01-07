CREATE TABLE api_contracts (
  id UUID PRIMARY KEY,
  service_name TEXT NOT NULL,
  route TEXT NOT NULL,
  method TEXT NOT NULL,
  contract_version TEXT NOT NULL,
  request_schema JSONB NOT NULL,
  response_schema JSONB NOT NULL,
  owner_module TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by TEXT NOT NULL,
  status TEXT NOT NULL,
  version INTEGER NOT NULL
);

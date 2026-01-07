CREATE TABLE event_contracts (
  id UUID PRIMARY KEY,
  event_name TEXT NOT NULL,
  event_version TEXT NOT NULL,
  payload_schema JSONB NOT NULL,
  owner_module TEXT NOT NULL,
  breaking_policy TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by TEXT NOT NULL,
  status TEXT NOT NULL,
  version INTEGER NOT NULL
);

CREATE TABLE config_entity_types (
  id UUID PRIMARY KEY,
  entity_type_code TEXT NOT NULL,
  description TEXT NOT NULL,
  allowed_fields_schema JSONB NOT NULL,
  owner_module TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by TEXT NOT NULL,
  status TEXT NOT NULL,
  version INTEGER NOT NULL
);

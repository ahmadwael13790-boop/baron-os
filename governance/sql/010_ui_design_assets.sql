CREATE TABLE ui_design_assets (
  id UUID PRIMARY KEY,
  tool TEXT NOT NULL,
  asset_type TEXT NOT NULL,
  asset_ref TEXT NOT NULL,
  asset_version TEXT NOT NULL,
  owner_module TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by TEXT NOT NULL,
  status TEXT NOT NULL,
  version INTEGER NOT NULL
);

-- PHASE 0
-- Governance Schema & Contracts
-- Canonical SQL - DO NOT EDIT WITHOUT NEW CONTRACT

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE SCHEMA IF NOT EXISTS governance AUTHORIZATION baron;

CREATE TABLE governance.schema_contracts (
    id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    schema_name      TEXT NOT NULL,
    contract_version TEXT NOT NULL,
    ddl_hash         TEXT NOT NULL,
    tables_list      TEXT[] NOT NULL,
    owner_module     TEXT NOT NULL,
    created_at       TIMESTAMPTZ NOT NULL DEFAULT now(),
    created_by       TEXT NOT NULL,
    status           TEXT NOT NULL DEFAULT 'ACTIVE',
    version          INTEGER NOT NULL DEFAULT 1
);

CREATE OR REPLACE FUNCTION governance.block_non_governance_tables()
RETURNS event_trigger
LANGUAGE plpgsql
AS $$
DECLARE
    obj record;
BEGIN
    FOR obj IN SELECT * FROM pg_event_trigger_ddl_commands()
    LOOP
        IF obj.object_type = 'table'
           AND obj.schema_name IS DISTINCT FROM 'governance' THEN
            RAISE EXCEPTION
              '❌ Phase 0 violation: CREATE TABLE in schema "%" is not allowed.',
              obj.schema_name;
        END IF;
    END LOOP;
END;
$$;

-- NOTE: Event trigger must be created by superuser (postgres)
-- CREATE EVENT TRIGGER trg_block_tables_phase0
-- ON ddl_command_end
-- WHEN TAG IN ('CREATE TABLE')
-- EXECUTE FUNCTION governance.block_non_governance_tables();

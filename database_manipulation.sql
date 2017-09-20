CREATE DATABASE galvanize_contacts;

CREATE ROLE galvanize_admin WITH PASSWORD 'galvanize_P@$$w0rd';

REVOKE ALL PRIVILEGES ON database galvanize_contacts FROM PUBLIC;

GRANT USAGE ON SCHEMA public TO PUBLIC;

ALTER ROLE galvanize_admin WITH SUPERUSER;

ALTER DEFAULT PRIVILEGES IN SCHEMA PUBLIC GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO galvanize_admin;

GRANT USAGE ON ALL SEQUENCES IN SCHEMA PUBLIC TO galvanize_admin;

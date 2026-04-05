-- =============================================================
-- Script  : 01_setup_database.sql
-- Project : DataWarehouse Portfolio Project
-- Author  : Ayan
-- Date    : 2026-04-05
-- =============================================================
-- Description:
--   Creates the DataWarehouse database from scratch.
--   Uses DROP + CREATE pattern to ensure a clean environment.
--
-- WARNING: Running this script will permanently delete the
--          existing DataWarehouse database and ALL its data.
--          This is intentional for dev/reset purposes only.
--          DO NOT run this in a production environment.
-- =============================================================

DROP DATABASE IF EXISTS DataWarehouse;
CREATE DATABASE DataWarehouse;
USE DataWarehouse;

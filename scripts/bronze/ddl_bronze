-- =============================================================
-- Script  : 02_create_bronze_tables.sql
-- Project : Data Warehouse Portfolio Project
-- Author  : Ayan
-- Date    : 2026-04-05
-- =============================================================
-- Script Purpose:
--   Creates all raw ingestion (bronze layer) tables inside the
--   DataWarehouse database. Drops existing tables if they exist
--   to ensure a clean structure on every run.
--
-- WARNING: Running this script will drop and recreate all bronze
--          tables and permanently delete any data in them.
--          DO NOT run this in a production environment.
-- =============================================================

USE DataWarehouse;

-- -------------------------------------------------------------
-- CRM Tables
-- -------------------------------------------------------------

USE DataWarehouse;

DROP TABLE IF EXISTS bronze_crm_cust_info;
CREATE TABLE bronze_crm_cust_info (
    cst_id              INT NULL,
    cst_key             VARCHAR(50),
    cst_firstname       VARCHAR(50),
    cst_lastname        VARCHAR(50),
    cst_marital_status  VARCHAR(50),
    cst_gndr            VARCHAR(50),
    cst_create_date     DATE
);
DROP TABLE IF EXISTS bronze_crm_prd_info;
CREATE TABLE bronze_crm_prd_info (
    prd_id              INT,
    prd_key             VARCHAR(50),
    prd_nm              VARCHAR(50),
    prd_cost            INT,
    prd_line            VARCHAR(50),
    prd_start_dt        DATETIME,
    prd_end_dt          DATETIME
);

DROP TABLE IF EXISTS bronze_crm_sales_details;
CREATE TABLE bronze_crm_sales_details (
    sls_ord_num         VARCHAR(50),
    sls_prd_key         VARCHAR(50),
    sls_cust_id         INT,
    sls_order_dt        INT,
    sls_ship_dt         INT,
    sls_due_dt          INT,
    sls_sales           INT,
    sls_quantity        INT,
    sls_price           INT
);

-- -------------------------------------------------------------
-- ERP Tables
-- -------------------------------------------------------------

DROP TABLE IF EXISTS bronze_erp_loc_a101;
CREATE TABLE bronze_erp_loc_a101 (
    cid                 VARCHAR(50),
    cntry               VARCHAR(50)
);

DROP TABLE IF EXISTS bronze_erp_cust_az12;
CREATE TABLE bronze_erp_cust_az12 (
    cid                 VARCHAR(50),
    bdate               DATE,
    gen                 VARCHAR(50)
);

DROP TABLE IF EXISTS bronze_erp_px_cat_g1v2;
CREATE TABLE bronze_erp_px_cat_g1v2 (
    id                  VARCHAR(50),
    cat                 VARCHAR(50),
    subcat              VARCHAR(50),
    maintenance         VARCHAR(50)
);

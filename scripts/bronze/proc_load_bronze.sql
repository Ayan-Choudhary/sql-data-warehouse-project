-- =============================================================
-- Script  : 03_load_bronze.sql
-- Project : Data Warehouse Portfolio Project
-- Author  : Ayan
-- Date    : 2026-04-05
-- =============================================================
-- Script Purpose:
--   Loads data into the bronze layer tables from CSV files.
--   Truncates each table before loading for a clean reload.
--
-- Usage:
--   Run this script directly in MySQL Workbench
--
-- NOTE: CSV files must be placed in:
--   C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/
--
-- WARNING: This will delete all existing bronze table data
--          before reloading. DO NOT run in production.
-- =============================================================

USE DataWarehouse;

-- -------------------------------------------------------------
-- CRM Tables
-- -------------------------------------------------------------

TRUNCATE TABLE bronze_crm_cust_info;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cust_info.csv'
IGNORE INTO TABLE bronze_crm_cust_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

TRUNCATE TABLE bronze_crm_prd_info;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/prd_info.csv'
IGNORE INTO TABLE bronze_crm_prd_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

TRUNCATE TABLE bronze_crm_sales_details;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sales_details.csv'
IGNORE INTO TABLE bronze_crm_sales_details
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- -------------------------------------------------------------
-- ERP Tables
-- -------------------------------------------------------------

TRUNCATE TABLE bronze_erp_loc_a101;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/loc_a101.csv'
IGNORE INTO TABLE bronze_erp_loc_a101
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

TRUNCATE TABLE bronze_erp_cust_az12;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cust_az12.csv'
IGNORE INTO TABLE bronze_erp_cust_az12
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

TRUNCATE TABLE bronze_erp_px_cat_g1v2;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/px_cat_g1v2.csv'
IGNORE INTO TABLE bronze_erp_px_cat_g1v2
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

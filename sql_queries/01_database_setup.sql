/*
-------------------------------------------------------------------------------
Project: Superstore Sales Performance Analysis
Author: Serhat Kaan Hitay
Date: 2026-01-21
Description: Finalized schema matching the 13-column CSV structure.
-------------------------------------------------------------------------------
*/

-- Step 1: Drop the table to clear old settings
DROP TABLE IF EXISTS superstore_sales;

-- Step 2: Create the table structure (Must match CSV column order exactly)
CREATE TABLE superstore_sales (
    ship_mode VARCHAR(255),
    segment VARCHAR(255),
    country VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    postal_code VARCHAR(255),
    region VARCHAR(255),
    category VARCHAR(255),
    sub_category VARCHAR(255),
    sales NUMERIC(10, 2),
    quantity INT,
    discount NUMERIC(10, 2),
    profit NUMERIC(10, 2)
);
/*
----------------------------------------------------------
Project: Superstore Sales Performance Analysis
Author: Serhat Kaan Hitay
Date: 2026-01-21
Description: Updated schema to match the simplified 
             Superstore CSV structure (13 columns).
----------------------------------------------------------
*/

-- Step 1: Drop existing table if it exists
DROP TABLE IF EXISTS superstore_sales;

-- Step 2: Create the table structure matching the CSV
CREATE TABLE superstore_sales (
    ship_mode VARCHAR(25),
    segment VARCHAR(25),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    region VARCHAR(25),
    category VARCHAR(25),
    sub_category VARCHAR(25),
    sales NUMERIC(10, 2),
    quantity INT,
    discount NUMERIC(4, 2),
    profit NUMERIC(10, 2)
);
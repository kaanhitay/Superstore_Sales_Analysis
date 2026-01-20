/*
-------------------------------------------------------------------------------
Project: Superstore Sales Performance Analysis
Author: Serhat Kaan Hitay
Description: This script initializes the database schema by creating the 
             'superstore_sales' table. Data types are optimized for 
             financial analysis and data integrity.
-------------------------------------------------------------------------------
*/

-- Step 1: Create the table structure
-- We use VARCHAR(20) for postal_code to preserve leading zeros, 
-- which is a best practice for geographic data integrity.

CREATE TABLE superstore_sales (
    row_id INT PRIMARY KEY,
    order_id VARCHAR(25),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(25),
    customer_id VARCHAR(25),
    customer_name VARCHAR(100),
    segment VARCHAR(25),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(20), 
    region VARCHAR(25),
    product_id VARCHAR(25),
    category VARCHAR(25),
    sub_category VARCHAR(25),
    product_name VARCHAR(255),
    sales NUMERIC(10, 2),
    quantity INT,
    discount NUMERIC(4, 2),
    profit NUMERIC(10, 2)
);

-- End of Script
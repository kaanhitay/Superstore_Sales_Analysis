-- Step 1: Create the table for Superstore Sales data
-- This table will hold the raw transactional data for analysis

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
/*
-------------------------------------------------------------------------------
Phase 2: Exploratory Data Analysis (EDA)
Project: Superstore Sales Performance Analysis
Author: Serhat Kaan Hitay
Description: This script contains descriptive queries to understand sales 
             performance and profitability across different dimensions.
-------------------------------------------------------------------------------
*/

-- Query 1: Total Sales and Profit by Category
-- Objective: Identify which product categories are the main drivers of revenue and profit.

SELECT 
    category, 
    ROUND(SUM(sales), 2) AS total_sales, 
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percent
FROM superstore_sales
GROUP BY category
ORDER BY total_profit DESC;

-- Query 2: Deep Dive into Furniture Sub-Categories
-- Objective: Find out which sub-categories are dragging down the Furniture category's profit.

SELECT 
    sub_category, 
    ROUND(SUM(sales), 2) AS total_sales, 
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(discount) * 100, 2) AS avg_discount_percent
FROM superstore_sales
WHERE category = 'Furniture'
GROUP BY sub_category
ORDER BY total_profit ASC;

-- Query 3: Customer Segment Performance (Updated)
-- Objective: Analyze profitability across different customer segments.

SELECT 
    segment, 
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_percent
FROM superstore_sales
GROUP BY segment
ORDER BY total_profit DESC;
ORDER BY total_profit DESC;
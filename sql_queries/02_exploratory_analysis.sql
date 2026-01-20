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
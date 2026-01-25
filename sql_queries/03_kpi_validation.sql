-- Validating Total Sales and Profit metrics
SELECT 
    ROUND(SUM(sales)::numeric, 1) AS total_sales, 
    ROUND(SUM(profit)::numeric, 1) AS total_profit,
    ROUND((SUM(profit) / SUM(sales) * 100)::numeric, 2) AS profit_margin
FROM superstore_sales;
![Executive Sales & Profitability Dashboard](Executive_Sales_Profitability_Dashboard.png)
Executive Sales & Profitability Analysis 📊
Project Overview
This is an end-to-end data analytics project designed to identify profitability trends and operational growth opportunities for a retail business. The workflow involves raw data processing with PostgreSQL, KPI calculation, and the development of a high-fidelity Power BI Executive Dashboard for strategic decision-making.

Repository Structure
/data: Contains the raw datasets used for the analysis.

/sql_queries: SQL scripts for data cleaning, transformation, and KPI validation.

/reports: Power BI project file (.pbix) and high-resolution dashboard exports.

Key Business Insights
The dashboard reveals critical performance metrics and operational risks:

Overall Performance: Achieved $2.3M in total sales with a net profit of $286.4K, maintaining a healthy 12.4% profit margin.

Profitability Leakage: The Tables category represents a significant risk, with a net loss of -$18K, indicating a need to re-evaluate pricing or logistics strategies.

Primary Growth Drivers: Copiers ($56K profit) and Phones ($45K profit) are the leading contributors to the bottom line.

Category Contribution: Waterfall analysis confirms that the Technology sector provides the highest margin, while Furniture significantly suppresses overall profitability.

Technical Features
Executive UI/UX: Applied Flat Design principles with a corporate color palette (#124578, #28A745, #D64550) for maximum clarity and professional appeal.

Advanced Visualizations: Utilized Waterfall charts for cumulative profit analysis and Pareto-style bar charts for product-level profitability.

Interactive Slicers: Enabled real-time regional filtering (Central, East, South, West) to allow for granular performance tracking.

Tech Stack
Database: PostgreSQL (Data Transformation & Aggregation)

Visualization: Power BI (Reporting & UI Design)

Methodology: Descriptive & Diagnostic Analytics

---

## 💡 Strategic Recommendations
Based on the data-driven insights from the dashboard, the following actions are recommended:

* **Urgent Intervention on Tables:** Investigate the high logistics costs and aggressive discount strategies associated with the **Tables** sub-category to stop the **-$18K** net loss.
* **Scale High-Margin Products:** Increase the marketing budget and inventory for **Copiers ($56K profit)** and **Phones ($45K profit)**, as they are the primary growth drivers of the business.
* **Regional Optimization:** Focus expansion efforts on the **West** region, which currently leads in both sales volume and profit margin stability.
* **Furniture Category Review:** Re-evaluate the pricing model for the entire **Furniture** segment to ensure that profitable items like **Chairs** are not being offset by underperforming sub-categories.

### 🛠️ Data Notes & Assumptions

To keep the analysis transparent and reproducible:

* **Profit Definition:** `profit` is a native column included in the Superstore dataset (not manually derived). It is stored as **NUMERIC** in PostgreSQL to preserve precision.

* **Aggregation Logic:** All KPIs (e.g., Total Sales, Total Profit) are computed using `SUM()` in SQL and `SUM()`-equivalent aggregation in Power BI.

* **Scope:** This iteration focuses on transactional sales performance. A separate "Returns" dataset is **not** used to maintain focus on core metrics.


### 🔍 Technical Validation (SQL ↔ Power BI)

A cross-platform validation was performed to ensure the reported KPIs are consistent:

* **PostgreSQL Output:** The KPI validation query returns **Total Profit = 286,397.8**.

* **Power BI Output:** The `Total Profit` measure uses `SUM(superstore_sales[profit])`. The dashboard card displays **$286.4K** because the visual uses **Display units: Thousands** with rounding applied at the display level.

* **Result:** The SQL total profit and the Power BI total profit **match**, with any difference explained purely by visual rounding ($286,397.8 \rightarrow \$286.4\text{K}$).

![SQL Validation Proof](sql_validation_result.png)


### 📉 Deep Dive: The "Tables" Profitability Issue

The negative profit in the **Tables** sub-category ($\approx$ **-$18K**) is primarily associated with:

* **High Discount Concentration:** Many orders in this sub-category carry aggressive discounts.

* **Negative-Profit Line Items:** Multiple transactions show negative profit despite meaningful sales volume, indicating margin erosion at the order-line level.


### 💡 Strategic Recommendations

* **Furniture Category Review:** Re-evaluate the pricing and discounting model for the **Tables** sub-category to prevent underperforming items from offsetting the gains in Chairs and Furnishings.

* **Profitability Optimization:** Investigate discounting patterns and negative-profit line items associated with high-volume categories to improve overall net margins.


### 🚀 Reproducibility (How to Run)

1. **Database Setup:** Run the SQL scripts in `/sql_queries` in numeric order (`01_*` → `02_*` → `03_*`).

2. **Data Import:** Import the CSV file from `/data` into PostgreSQL. Ensure column names align with the table schema.

3. **Analysis & Validation:** Use the exploratory scripts for breakdowns and run the KPI validation script to reproduce the headline totals.

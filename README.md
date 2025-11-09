# 🚘 BMW Sales Insights Dashboard – Power BI Project

## 📖 Project Overview
This project showcases a **complete data analytics workflow** — from raw data to insights — using **Excel, SQL, and Power BI**.  
It focuses on analyzing **BMW’s sales performance** across models, regions, and fuel types, identifying patterns, trends, and key growth opportunities.

---

## 🧩 ETL Workflow (Extract – Transform – Load)

<details>
<summary>🔹 1️⃣ Data Extraction</summary>

- **Source:** Raw BMW sales dataset in CSV format  
- **Data Fields:**  
  `Model`, `Year`, `Region`, `Fuel Type`, `Transmission`, `Engine Size (L)`, `Mileage (KM)`, `Price (USD)`, `Sales Volume`  
- Initial data exploration done in **Excel**
</details>

<details>
<summary>🔹 2️⃣ Data Transformation (Excel Cleaning)</summary>

Performed data cleaning and preprocessing in Excel:
- Removed duplicates and blank rows  
- Standardized column names and formats  
- Fixed inconsistent region and fuel type labels  
- Converted year to numeric and formatted prices  

**Created calculated columns:**
- `Revenue = Price × Sales Volume`
- `Sales Classification = High / Medium / Low` (based on volume)

📁 Final cleaned file: `Cleaned_BMW_Sales_Data.xlsx`
</details>

<details>
<summary>🔹 3️⃣ Data Validation (SQL)</summary>

Loaded cleaned data into **SQL Server** for verification and quality checks.

```sql
CREATE TABLE BMW_Sales (
    Model NVARCHAR(100),
    Year INT,
    Region NVARCHAR(50),
    Fuel_Type NVARCHAR(50),
    Transmission NVARCHAR(50),
    Engine_Size_L FLOAT,
    Mileage_KM FLOAT,
    Price_USD FLOAT,
    Sales_Volume INT
);
```
Validated:
-No nulls or duplicates
-Logical consistency (e.g., price & volume correlations)
-Aggregated metrics using SQL queries (SUM, AVG, COUNT)
-✅ SQL served as the data source for Power BI.

</details>

📊 Power BI Data Modeling & DAX Measures

Connected SQL Server data to Power BI and created analytical measures for deeper insights.

🎨 Dashboard Design (4 Interactive Pages)
🖥️ Page 1 – Sales Overview

_High-level performance summary_

-KPIs: Total Revenue, Total Sales, Avg Price, High Sales Models

-Visuals:
  -Revenue by Year (Line)
  -Sales by Model (Bar)
  -Sales by Fuel Type (Donut)
  -Map: Regional Revenue
  -Top 5 Models by Revenue
  -Slicers: Year, Fuel Type

🚗 Page 2 – Model Performance

_Deep dive into individual model performance_

-KPIs: Total Revenue, Avg Price, Avg Mileage, Model Count

-Visuals:
  -Revenue by Model (Bar)
  -Price vs Sales Volume (Scatter)
  -Revenue Trend by Model (Line)
  -Model Summary Table (Model, Avg Price, Sales, Revenue)
  -Slicers: Model, Year

🌍 Page 3 – Regional Analysis

_Geographical insights & market contribution_

-KPIs: Total Revenue by Region, Avg Sales Volume

-Visuals:
  -Map: Revenue by Region
  -Bar: Top 5 Regions by Sales
  -Line: Regional Growth Trend Over Years
  - Slicers: Region, Year
    
Page 4 – Fuel Type Trends

_Understanding the shift from petrol/diesel to hybrid/electric_

-KPIs: Revenue by Fuel Type, Market Share %
-Visuals:
  -Line: Revenue by Fuel Type (Over Years)
  -Area: Market Shift from Conventional to EV
  -Donut: Fuel Type Share
  -Table: Top Models by Fuel Type
  -Slicers: Fuel Type, Year

💡 Key Insights
Insight	Observation
Top Models	BMW X5 and 3 Series dominate overall revenue contribution
Fuel Type Shift	Electric & Hybrid show fastest YoY growth post-2020
Regional Sales	Southern & Western regions lead in both revenue and sales volume
Diesel Decline	Diesel models have steadily decreased in market share
Optimal Pricing Band	Mid-range (Medium price category) drives maximum unit sales

🧠 Tools & Skills Used

Excel → Data cleaning & preprocessing
SQL Server → Data validation & integrity checks
Power BI → DAX calculations, data modeling & visualization
Data Storytelling → Dashboard design & presentation

📈 Project Lifecycle Summary

1️⃣ Excel: Cleaned and standardized the raw dataset
2️⃣ SQL: Validated and structured the data
3️⃣ Power BI: Built relationships, created DAX measures, and visualized insights
4️⃣ Storytelling: Designed 4 themed dashboard pages for a smooth narrative
5️⃣ Insights: Derived actionable insights for business decision-making

🏁 Final Thoughts

This project reflects a complete analytics pipeline — showcasing:
Technical proficiency in Excel, SQL, and Power BI
Strong understanding of data modeling & visualization
Ability to communicate findings through data storytelling

👨‍💻 Author

Created by: Fouzan
📧 Data Analyst | SQL | Excel | Power BI
🔗 [linkedin.com/in/fouzan-sahibole-b4b055241](https://www.linkedin.com/in/fouzan-sahibole-b4b055241/)

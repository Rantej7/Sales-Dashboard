
# 📊 Sales Dashboard – Excel, SQL & Power BI

## 📌 Project Overview

This project analyzes sales data using Microsoft Excel, SQL, and Power BI. It covers data preparation, querying, analysis, and interactive visualization to explore sales performance across countries, products, and time periods.

## 🎯 Project Objectives

- Clean and prepare raw sales data.
- Analyze sales performance using Excel.
- Query and aggregate sales data using SQL.
- Build an interactive Power BI dashboard.
- Identify trends across countries, products, and time periods.
- Present findings through data visualizations and business insights.

## 🛠️ Tools & Technologies

- **Microsoft Excel:** Data cleaning, formulas, pivot tables, and analysis.
- **SQL:** Data querying, filtering, grouping, and aggregation.
- **Power BI:** Interactive dashboards and visualizations.
- **Power Query:** Data transformation and preparation.
- **DAX:** Measures and calculations.

## 🔄 Project Workflow

```text
Raw Sales Data
      |
      v
Excel Data Preparation
      |
      v
SQL Data Analysis
      |
      v
Power Query Transformation
      |
      v
Power BI Dashboard
      |
      v
Business Insights
```

---

## 📊 1. Excel Analysis

Excel was used to prepare, organize, and analyze the sales data.

### Key Tasks

- Data cleaning and formatting
- Sorting and filtering
- Sales calculations
- Summary tables
- Pivot table analysis
- Trend identification

### Example Excel Formulas

**Total Sales**
```excel
=SUM(SalesData[Sales])
```

**Average Sales**
```excel
=AVERAGE(SalesData[Sales])
```

**Total Number of Orders**
```excel
=COUNTA(SalesData[Order_ID])
```

**Sales for a Specific Country**
```excel
=SUMIF(SalesData[Country], "USA", SalesData[Sales])
```

**Sales by Product**
Create a PivotTable with:
- Rows: Product
- Values: Sum of Sales

**Sales by Country**
Create a PivotTable with:
- Rows: Country
- Values: Sum of Sales
- Sort: Largest to Smallest

---

## 🗄️ 2. SQL Analysis

SQL was used to query and analyze sales data, including country-wise, product-wise, and time-based performance.

### View All Records

```sql
SELECT *
FROM Sales;
```

### Calculate Total Sales

```sql
SELECT SUM(Sales) AS Total_Sales
FROM Sales;
```

### Country-wise Sales

```sql
SELECT
    Country,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Country
ORDER BY Total_Sales DESC;
```

### Product-wise Sales

```sql
SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product
ORDER BY Total_Sales DESC;
```

### Year-wise Sales

```sql
SELECT
    YEAR(Order_Date) AS Sales_Year,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY YEAR(Order_Date)
ORDER BY Sales_Year;
```

### Monthly Sales

```sql
SELECT
    YEAR(Order_Date) AS Sales_Year,
    MONTH(Order_Date) AS Sales_Month,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY
    YEAR(Order_Date),
    MONTH(Order_Date)
ORDER BY
    Sales_Year,
    Sales_Month;
```

### Top 5 Products

```sql
SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;
```

*Note: `YEAR()` and `MONTH()` are supported in MySQL and SQL Server. `LIMIT` is used in MySQL; SQL Server uses `TOP (5)` instead.*

---

## 📈 3. Power BI Dashboard

The sales data was visualized in Power BI to create an interactive dashboard.

### Dashboard Features

- Country-wise sales analysis
- Product-wise sales analysis
- Yearly, quarterly, and monthly sales trends
- Interactive filters and slicers
- Sales performance comparisons
- AI-assisted exploration of the February sales decline

### Power BI Measures (DAX)

**Total Sales**
```dax
Total Sales = SUM(Sales[Sales])
```

**Total Orders**
```dax
Total Orders = DISTINCTCOUNT(Sales[Order_ID])
```

**Average Sales**
```dax
Average Sales = AVERAGE(Sales[Sales])
```

*These are example measures; use the actual field names in your data model.*

---

## 📷 4. Dashboard Preview

Place your screenshot in the `screenshots` folder and name it `dashboard.png`.

![Sales Dashboard](screenshots/dashboard.png)

---

## 💡 5. Key Analysis Areas

| Area | Analysis |
|---|---|
| Excel | Data preparation, formulas, and PivotTables |
| SQL | Queries, aggregation, and sales analysis |
| Power BI | Interactive dashboard and visualizations |
| Country | Compare sales across countries |
| Product | Analyze product-level sales |
| Time | Explore monthly, quarterly, and yearly trends |

---

## 📁 6. Project Structure

```text
Sales-Dashboard/
│
├── Excel/
│   └── Sales_Analysis.xlsx
│
├── SQL/
│   └── Sales_Analysis.sql
│
├── Power BI/
│   └── Sales_Dashboard.pbix
│
├── screenshots/
│   └── dashboard.png
│
└── README.md
```

---

## 🧠 7. Skills Demonstrated

- Microsoft Excel
- SQL
- Power BI
- Power Query
- DAX
- Data Cleaning
- Data Transformation
- Data Analysis
- Data Visualization
- Dashboard Development
- Business Intelligence

---

## 👨‍💻 Author

**Rantej Singh**

B.Com (Hons) Graduate | Finance & Data Analytics

## Dashboard Preview
## 📊 Power BI Dashboard
<img width="1298" height="727" alt="Screenshot 2026-09-27 095654" src="https://github.com/user-attachments/assets/ea6ca299-4444-400d-81f9-63b43bcb0205" />



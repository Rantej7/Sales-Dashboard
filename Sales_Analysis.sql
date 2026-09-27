-- Sales Dashboard SQL Analysis
-- Project: Excel + SQL + Power BI

-- 1. View all sales records
SELECT *
FROM Sales;

-- 2. Total sales
SELECT SUM(Sales) AS Total_Sales
FROM Sales;

-- 3. Sales by country
SELECT Country, SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Country
ORDER BY Total_Sales DESC;

-- 4. Sales by product
SELECT Product, SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product
ORDER BY Total_Sales DESC;

-- 5. Year-wise sales
SELECT YEAR(Order_Date) AS Sales_Year,
       SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY YEAR(Order_Date)
ORDER BY Sales_Year;

-- 6. Monthly sales
SELECT YEAR(Order_Date) AS Sales_Year,
       MONTH(Order_Date) AS Sales_Month,
       SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Sales_Year, Sales_Month;

-- 7. Top 5 products
SELECT Product, SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;

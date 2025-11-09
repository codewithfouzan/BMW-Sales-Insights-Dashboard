CREATE DATABASE BMW_Sales_DB;

USE BMW_Sales_DB;

CREATE TABLE BMW_Sales (
    model NVARCHAR(50),
    year INT,
    region NVARCHAR(50),
    color NVARCHAR(20),
    fuel_type NVARCHAR(20),
    transmission NVARCHAR(20),
    engine_size_l DECIMAL(3,1),
    mileage_km INT,
    price_usd DECIMAL(10,2),
    sales_volume INT,
    sales_classification NVARCHAR(10)
);

SELECT COUNT(*) AS TotalRows FROM BMW_Sales;

SELECT * FROM BMW_Sales WHERE price_usd IS NULL;

SELECT model, year, region, COUNT(*) AS cnt
FROM BMW_Sales
GROUP BY model, year, region
HAVING COUNT(*) > 1;

SELECT year, SUM(sales_volume) AS TotalUnits, AVG(price_usd) AS AvgPrice
FROM BMW_Sales
GROUP BY year
ORDER BY year;

SELECT TOP 5 model, SUM(sales_volume) AS TotalSales
FROM BMW_Sales
GROUP BY model
ORDER BY TotalSales DESC;

SELECT region, SUM(sales_volume) AS TotalSales
FROM BMW_Sales
GROUP BY region
ORDER BY TotalSales DESC;

SELECT year, fuel_type, SUM(sales_volume) AS TotalSales
FROM BMW_Sales
WHERE fuel_type IN ('Petrol','Electric')
GROUP BY year, fuel_type
ORDER BY year;

SELECT model, year, SUM(price_usd * sales_volume) AS revenue
FROM BMW_Sales
GROUP BY model, year
ORDER BY revenue DESC;

SELECT model, year, price_usd,
CASE 
    WHEN price_usd > 90000 THEN 'Luxury'
    WHEN price_usd > 50000 THEN 'Premium'
    ELSE 'Standard'
END AS price_category
FROM BMW_Sales;

USE SalesDB;

SELECT CustomerName, SUM(UnitPrice * Quantity) 
FROM Sales
GROUP BY CustomerName;
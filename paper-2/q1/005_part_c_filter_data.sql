USE SalesDB;

SELECT * 
FROM Sales
WHERE Quantity > 10 AND UnitPrice != 50 
AND SaleDate < '2024-1-15';

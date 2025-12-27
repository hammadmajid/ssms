USE SalesDB;

SELECT UPPER(CustomerName) AS UpperCaseCustomerNames,
CAST(ROUND(UnitPrice, 0) AS INT) AS RoundedUnitPrice
FROM Sales;
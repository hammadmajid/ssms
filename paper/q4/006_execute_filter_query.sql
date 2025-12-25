USE EcommerceDB;

SELECT ProductID, SKU_Code, Description, Category, StockLevel
FROM Products
WHERE Category = 'Electronics';

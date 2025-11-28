USE DemoNested;

SELECT Name
FROM Customers
WHERE CustomerID = (
    SELECT TOP 1 CustomerID
    FROM Orders
    ORDER BY Amount DESC
);

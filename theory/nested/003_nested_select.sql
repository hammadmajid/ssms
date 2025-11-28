USE DemoNested;

SELECT Name
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
    WHERE Amount > 100
);

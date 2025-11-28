SELECT
    CustomerID,
    (SELECT COUNT(*) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID) AS OrderCount
FROM Customers;

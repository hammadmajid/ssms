USE DemoNested;

INSERT INTO Customers (CustomerID, Name, City) VALUES
(1, 'Alice', 'Berlin'),
(2, 'Bob', 'Paris'),
(3, 'Carol', 'Rome');

INSERT INTO Orders (OrderID, CustomerID, Amount, OrderDate) VALUES
(101, 1, 120.50, '2024-01-10'),
(102, 1, 90.00, '2024-02-11'),
(103, 2, 300.00, '2024-03-05'),
(104, 3, 12.00, '2024-03-06');

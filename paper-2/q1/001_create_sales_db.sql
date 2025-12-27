USE SalesDB;

CREATE TABLE Sales (
	SaleID INT PRIMARY KEY,
	CustomerName VARCHAR(256),
	UnitPrice FLOAT(2),
	Quantity INT,
	SaleDate DATE,
);
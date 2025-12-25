USE EcommerceDB;

CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    SKU_Code NVARCHAR(50) NOT NULL,
    Description NVARCHAR(255),
    Category NVARCHAR(50),
    StockLevel INT
);

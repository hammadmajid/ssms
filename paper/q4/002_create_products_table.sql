USE EcommerceDB;

CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    SKU_Code VARCHAR(50) NOT NULL,
    Description VARCHAR(255),
    Category NVARCHAR(50),
    StockLevel INT
);

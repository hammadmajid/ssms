USE EcommerceDB;

CREATE UNIQUE INDEX IX_Products_SKU_Code 
ON Products (SKU_Code);

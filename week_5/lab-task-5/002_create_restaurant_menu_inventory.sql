CREATE DATABASE RestaurantDB;

GO

USE RestaurantDB;

CREATE TABLE Ingredients (
    IngredientID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL UNIQUE,
    QuantityInStock DECIMAL(10,2) CHECK (QuantityInStock >= 0)
);

CREATE TABLE MenuItems (
    MenuItemID INT IDENTITY(1,1) PRIMARY KEY,
    ItemName VARCHAR(100) NOT NULL UNIQUE,
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0)
);

CREATE TABLE MenuItemIngredients (
    MenuItemID INT NOT NULL,
    IngredientID INT NOT NULL,
    QuantityRequired DECIMAL(10,2) NOT NULL CHECK (QuantityRequired > 0),
    PRIMARY KEY (MenuItemID, IngredientID),
    FOREIGN KEY (MenuItemID) REFERENCES MenuItems(MenuItemID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID)
);

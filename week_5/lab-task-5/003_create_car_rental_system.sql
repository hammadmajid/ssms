CREATE DATABASE CarRentalDB;

GO

USE CarRentalDB;

CREATE TABLE Cars (
    CarID INT IDENTITY(1,1) PRIMARY KEY,
    LicensePlate VARCHAR(15) NOT NULL UNIQUE,
    Make VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year INT CHECK (Year >= 1990),
    Status VARCHAR(20) DEFAULT 'Available'
);

CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    DriverLicenseNumber VARCHAR(20) UNIQUE NOT NULL,
    Phone VARCHAR(15)
);

CREATE TABLE Rentals (
    RentalID INT IDENTITY(1,1) PRIMARY KEY,
    CarID INT NOT NULL,
    CustomerID INT NOT NULL,
    RentalDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

USE UniDB;

CREATE TABLE Buildings (
	BuildingID INT IDENTITY(1, 1) PRIMARY KEY,
	BuildingName VARCHAR(256),
	Location VARCHAR(256),
);
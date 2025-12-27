USE UniDB;

CREATE TABLE Department (
	DeptID INT IDENTITY(1, 1) PRIMARY KEY,
	DeptName VARCHAR(256),
	BuildingID INT,
	CONSTRAINT fk_building_id FOREIGN KEY (BuildingID) REFERENCES Buildings(BuildingID)
);
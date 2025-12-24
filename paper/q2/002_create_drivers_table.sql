USE LogisticsDB;

CREATE TABLE Drivers (
	DriverID INT PRIMARY KEY,
	DriverName VARCHAR(256),
	VehicleID INT,
	CONSTRAINT fk_vh_id FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID),
);

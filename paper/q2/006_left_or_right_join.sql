USE LogisticsDB;

SELECT Vehicle.VehicleID, VehicleModel 
FROM Vehicle LEFT JOIN Drivers
ON Vehicle.VehicleID = Drivers.VehicleID
WHERE Drivers.VehicleID IS NULL;

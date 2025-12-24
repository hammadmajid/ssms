USE LogisticsDB;

SELECT Drivers.DriverName, Vehicle.VehicleModel 
FROM Vehicle INNER JOIN Drivers 
ON Vehicle.VehicleID = Drivers.VehicleID;

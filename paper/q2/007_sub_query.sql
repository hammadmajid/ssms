USE LogisticsDB;

SELECT DriverName, VehicleID
FROM Drivers
WHERE DriverName LIKE '%n'
    AND VehicleID IN (
        SELECT VehicleID
        FROM Vehicle
        WHERE VehicleID = 101
    );

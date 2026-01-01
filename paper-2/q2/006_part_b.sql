USE UniDB;

SELECT Department.DeptName, Buildings.BuildingName
FROM Professors 
LEFT JOIN Department
ON Department.DeptID = Professors.DeptID
INNER JOIN Buildings
ON Department.BuildingID = Buildings.BuildingID
WHERE Professors.DeptID IS NULL;

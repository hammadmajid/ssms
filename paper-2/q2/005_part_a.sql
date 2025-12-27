	USE UniDB;

	SELECT Professors.ProfName, Department.DeptName, Buildings.BuildingName
	FROM Professors 
	INNER JOIN Department
	ON Professors.DeptID = Department.DeptID
	INNER JOIN Buildings
	ON Department.BuildingID = Buildings.BuildingID;
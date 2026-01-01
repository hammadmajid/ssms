	USE UniDB;

	SELECT Professors.ProfName, Department.DeptName
	FROM Professors 
	INNER JOIN Department
	ON Professors.DeptID = Department.DeptID
	INNER JOIN Buildings
	ON Department.BuildingID = Buildings.BuildingID
	WHERE Professors.ProfName LIKE 'S%' AND Buildings.Location = 'North Campus';
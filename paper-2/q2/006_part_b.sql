	USE UniDB;

	SELECT Department.DeptName
	FROM Department 
	LEFT JOIN Professors
	ON Professors.DeptID = Department.DeptID
	INNER JOIN Buildings
	ON Department.BuildingID = Buildings.BuildingID
	WHERE Professors.ProfID IS NULL;
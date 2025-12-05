-- Task 6
USE Dept;


SELECT DISTINCT d.DepartmentID, d.DepartmentName
FROM Department d
INNER JOIN Employee e ON e.Department1D = d.DepartmentID
WHERE DATEDIFF(YEAR, e.HireDate, GETDATE()) >= 10;
-- Task 7
USE Dept;

SELECT d.DepartmentID, d.DepartmentName, SUM(e.Salary) AS TotalSalary
FROM Department d
INNER JOIN Employee e ON e.Department1D = d.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
HAVING SUM(e.Salary) > 500000;
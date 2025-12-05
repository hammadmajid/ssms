-- Task 4

USE Dept;

SELECT e.Employeeuane, d.DptLocation
FROM Employee e
INNER JOIN Department d ON e.Department1D = d.DepartmentID
WHERE d.DepartmentName IN ('IT', 'Finance')
  AND e.Salary BETWEEN 55000 AND 85000;
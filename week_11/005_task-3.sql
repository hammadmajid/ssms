-- Task 3

USE Dept;


SELECT e.Employeeuane, d.DepartmentName
FROM Employee e
INNER JOIN Department d ON e.Department1D = d.DepartmentID
WHERE e.Salary > 60000
  AND d.DptLocation = 'Lahore';
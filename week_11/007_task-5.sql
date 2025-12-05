-- Task 5
USE Dept;

SELECT e.Employeeuane
FROM Employee e
INNER JOIN Department d ON e.Department1D = d.DepartmentID
WHERE d.DptLocation = 'Karachi'
  AND e.Salary > 75000;
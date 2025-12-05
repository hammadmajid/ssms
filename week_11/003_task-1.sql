USE Dept;

-- Task 1
SELECT DISTINCT e.Employeeuane, e.EnployeeID, e.Department1D
FROM Employee e
LEFT JOIN Department d ON e.Department1D = d.DepartmentID
WHERE d.DepartmentID IS NULL
  AND e.Salary < 45000
  AND e.Department1D <> 1;

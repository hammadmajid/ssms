USE Dept;

-- Task 1
SELECT DISTINCT e.Employeeuane, e.EnployeeID, e.Department1D
FROM Employee e
LEFT JOIN Department d ON e.Department1D = d.DepartmentID
WHERE d.DepartmentID IS NULL
  AND e.Salary < 45000
  AND e.Department1D <> 1;

-- Task 2
SELECT e.Employeeuane, d.DepartmentName, d.DptLocation, e.Salary
FROM Employee e
CROSS JOIN Department d
WHERE d.DptLocation = 'Islamabad'
  AND e.Salary > 50000;

-- Task 3
SELECT e.Employeeuane, d.DepartmentName
FROM Employee e
INNER JOIN Department d ON e.Department1D = d.DepartmentID
WHERE e.Salary > 60000
  AND d.DptLocation = 'Lahore';

-- Task 4
SELECT e.Employeeuane, d.DptLocation
FROM Employee e
INNER JOIN Department d ON e.Department1D = d.DepartmentID
WHERE d.DepartmentName IN ('IT', 'Finance')
  AND e.Salary BETWEEN 55000 AND 85000;

-- Task 5
SELECT e.Employeeuane
FROM Employee e
INNER JOIN Department d ON e.Department1D = d.DepartmentID
WHERE d.DptLocation = 'Karachi'
  AND e.Salary > 75000;

USE Dept;

-- Task 2
SELECT e.Employeeuane, d.DepartmentName, d.DptLocation, e.Salary
FROM Employee e
CROSS JOIN Department d
WHERE d.DptLocation = 'Islamabad'
  AND e.Salary > 50000;
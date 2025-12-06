USE UniversityDB;

SELECT *
FROM Student
WHERE DeptID IN (
  SELECT DeptID
  FROM Student
  WHERE StudentName LIKE 'S%'
);

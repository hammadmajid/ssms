USE UniversityDB;

SELECT s.StudentID,
       s.StudentName,
       s.CGPA,
       d.DeptName
FROM Student s
JOIN Department d ON s.DeptID = d.DeptID
WHERE s.StudentName LIKE '%Ali%';

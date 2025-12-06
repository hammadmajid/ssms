USE UniversityDB;

SELECT s.StudentID,
       s.StudentName,
       s.CGPA,
       d.DeptName
FROM Department d
LEFT JOIN Student s ON s.DeptID = d.DeptID;

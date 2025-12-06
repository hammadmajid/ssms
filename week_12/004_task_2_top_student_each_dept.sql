USE UniversityDB;

SELECT s.*
FROM Student s
WHERE s.CGPA = (
  SELECT MAX(s2.CGPA)
  FROM Student s2
  WHERE s2.DeptID = s.DeptID
);

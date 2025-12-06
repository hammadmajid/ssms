USE UniversityDB;

CREATE TABLE Student (
  StudentID INT PRIMARY KEY,
  StudentName VARCHAR(100),
  CGPA DECIMAL(3,2),
  AdmissionDate DATE,
  DeptID INT FOREIGN KEY REFERENCES Department(DeptID)
);

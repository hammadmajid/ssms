USE UniversityDB;

INSERT INTO Department (DeptID, DeptName, Location)
VALUES
  (1, 'Computer Science', 'Lahore'),
  (2, 'Electrical Engineering', 'Karachi'),
  (3, 'Business', 'Islamabad'),
  (4, 'Mathematics', 'Peshawar');

INSERT INTO Student (StudentID, StudentName, CGPA, AdmissionDate, DeptID)
VALUES
  (101, 'Ali Raza', 3.45, '2022-09-15', 1),
  (102, 'Sara Khan', 3.90, '2021-08-10', 1),
  (103, 'Sohail Ahmed', 2.80, '2023-01-20', 2),
  (104, 'Imran Ali', 3.75, '2020-07-05', 3),
  (105, 'Ayesha Siddiq', 3.10, '2022-02-12', 4),
  (106, 'Salman Qureshi', 3.88, '2021-03-19', 2),
  (107, 'Ali Nawaz', 2.95, '2023-04-01', 4),
  (108, 'Sadia Bibi', 3.60, '2020-09-09', 3);

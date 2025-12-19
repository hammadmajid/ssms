USE NF;

INSERT INTO Patient (PatientID, PatientName)
VALUES
(1, 'Ali Khan'),
(2, 'Sana Riaz'),
(3, 'Imran Malik');

INSERT INTO Doctor (DoctorID, DoctorName)
VALUES
(101, 'Dr. Ahmed'),
(102, 'Dr. Farah');

INSERT INTO PatientDisease (PatientID, Disease, DoctorID)
VALUES
(1, 'Flu', 101),
(1, 'Diabetes', 101),
(2, 'Malaria', 102),
(3, 'Diabetes', 101),
(3, 'TB', 101);

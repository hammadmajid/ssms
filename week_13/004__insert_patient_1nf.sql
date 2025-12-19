USE NF;

INSERT INTO Patient_1NF
(PatientID, PatientName, Disease, DoctorID, DoctorName)
VALUES
(1, 'Ali Khan', 'Flu', 101, 'Dr. Ahmed'),
(1, 'Ali Khan', 'Diabetes', 101, 'Dr. Ahmed'),
(2, 'Sana Riaz', 'Malaria', 102, 'Dr. Farah'),
(3, 'Imran Malik', 'Diabetes', 101, 'Dr. Ahmed'),
(3, 'Imran Malik', 'TB', 101, 'Dr. Ahmed');

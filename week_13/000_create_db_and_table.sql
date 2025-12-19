CREATE DATABASE NF;

GO

USE NF;

CREATE TABLE Patients (
	PatientID INT PRIMARY KEY,
	PatientName VARCHAR(200),
	Diseases VARCHAR(200),
	DoctorID INT,
	DoctorName VARCHAR(200),
	Specialization VARCHAR(200),
);
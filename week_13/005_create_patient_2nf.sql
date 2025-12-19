USE NF;

CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100)
);

CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(100)
);

CREATE TABLE PatientDisease (
    PatientID INT,
    Disease VARCHAR(100),
    DoctorID INT,
    PRIMARY KEY (PatientID, Disease),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

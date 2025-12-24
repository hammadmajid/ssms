USE HealthcareDB;

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    ConsultationFee DECIMAL(10, 2),
    MedicationCost DECIMAL(10, 2),
    VisitDate DATE,
);
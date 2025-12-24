USE HealthcareDB;

SELECT 
    PatientName, 
    SUM(ConsultationFee + MedicationCost) AS TotalExpenditure
FROM Appointments
GROUP BY PatientName; 
-- this will add the result and create new temporary column
    -- calld TotalExpenditure in the output
    -- otherwise there will be no colmn name
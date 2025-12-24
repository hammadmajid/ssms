USE HealthcareDB;

SELECT *
FROM Appointments
WHERE VisitDate > '2025-12-01'
  AND ConsultationFee > 50
  AND MedicationCost < 20;
USE HealthcareDB;

SELECT 
    -- turn every patient name into lower case and give that colmn
    -- a LowercasePatentName
    LOWER(PatientName) AS LowercasePatientName, 
    -- First round the Consulation fee and then cast it to int type
    -- set column name to RoundedConsultatiadfjaskldfjalfuck
    CAST(ROUND(ConsultationFee, 0) AS INT) AS RoundedConsultationFee
FROM Appointments;
/* Full Question: Create a stored procedure patient_report() that displays PatientID, PatientName, Age, BMI using your BMI function, and age category using your age_category function. */

DELIMITER //
CREATE PROCEDURE patient_report() BEGIN SELECT PatientID,PatientName,Age,calculate_bmi(WeightKg,1.70) AS BMI,age_category(Age) AS age_category FROM Patients; END //
DELIMITER ;
CALL patient_report(); -- Replace 1.70 with a real height column/value if available.

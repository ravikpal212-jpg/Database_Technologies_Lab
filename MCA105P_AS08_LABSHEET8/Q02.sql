/* Full Question: Create a function age_category(age) that returns Child, Adult, or Senior according to rules you define. Apply it to every patient. */

DELIMITER //
CREATE FUNCTION age_category(p_age INT) RETURNS VARCHAR(10) DETERMINISTIC RETURN CASE WHEN p_age<18 THEN 'Child' WHEN p_age<60 THEN 'Adult' ELSE 'Senior' END //
DELIMITER ;
SELECT PatientName,Age,age_category(Age) FROM Patients;

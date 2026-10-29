/* Full Question: Create a BEFORE INSERT trigger that converts DoctorName to uppercase before the doctor is stored. Insert a test doctor using a lowercase name and verify the result. */

DELIMITER //
CREATE TRIGGER trg_doctor_upper BEFORE INSERT ON Doctors FOR EACH ROW SET NEW.DoctorName=UPPER(NEW.DoctorName); //
DELIMITER ;

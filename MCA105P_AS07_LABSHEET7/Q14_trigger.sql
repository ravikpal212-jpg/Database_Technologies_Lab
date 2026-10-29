/* Full Question: Create a BEFORE INSERT trigger that prevents a doctor from being inserted with a negative ConsultationFee. Use SIGNAL SQLSTATE '45000' with a meaningful message and test it. */

DELIMITER //
CREATE TRIGGER trg_doctor_fee_check BEFORE INSERT ON Doctors FOR EACH ROW BEGIN IF NEW.ConsultationFee<0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Consultation fee cannot be negative'; END IF; END //
DELIMITER ;

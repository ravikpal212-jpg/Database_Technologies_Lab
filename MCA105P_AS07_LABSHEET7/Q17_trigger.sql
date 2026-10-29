/* Full Question: Create a BEFORE UPDATE trigger that prevents ConsultationFee from becoming negative. Test the trigger with an invalid UPDATE. */

DELIMITER //
CREATE TRIGGER trg_fee_update_check BEFORE UPDATE ON Doctors FOR EACH ROW BEGIN IF NEW.ConsultationFee<0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Consultation fee cannot be negative'; END IF; END //
DELIMITER ;

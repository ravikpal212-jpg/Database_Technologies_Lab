/* Full Question: Create and test a trigger of your choice that demonstrates a useful hospital data-validation or auditing rule. */

DELIMITER //
CREATE TRIGGER trg_no_negative_fee BEFORE INSERT ON Doctors FOR EACH ROW BEGIN IF NEW.ConsultationFee<0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Invalid consultation fee'; END IF; END //
DELIMITER ;

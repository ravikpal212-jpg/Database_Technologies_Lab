/* Full Question: Create an AFTER UPDATE trigger that stores every changed consultation fee in Fee_Log, including DoctorID, DoctorName, OLD fee, and NEW fee. Test it with an UPDATE. */

DELIMITER //
CREATE TRIGGER trg_fee_log AFTER UPDATE ON Doctors FOR EACH ROW BEGIN IF OLD.ConsultationFee<>NEW.ConsultationFee THEN INSERT INTO Fee_Log(DoctorID,DoctorName,OldFee,NewFee) VALUES(NEW.DoctorID,NEW.DoctorName,OLD.ConsultationFee,NEW.ConsultationFee); END IF; END //
DELIMITER ;

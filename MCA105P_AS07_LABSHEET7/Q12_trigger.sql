/* Full Question: Create an AFTER UPDATE trigger that records OLD and NEW ConsultationFee values whenever a doctor's fee changes. Update one doctor and verify Doctor_Audit. */

DELIMITER //
CREATE TRIGGER trg_doctor_fee_update AFTER UPDATE ON Doctors FOR EACH ROW BEGIN IF OLD.ConsultationFee<>NEW.ConsultationFee THEN INSERT INTO Doctor_Audit(DoctorID,ActionType,OldFee,NewFee) VALUES(NEW.DoctorID,'UPDATE',OLD.ConsultationFee,NEW.ConsultationFee); END IF; END //
DELIMITER ;

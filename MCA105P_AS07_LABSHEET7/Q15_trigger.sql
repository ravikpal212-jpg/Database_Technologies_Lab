/* Full Question: Create an AFTER DELETE trigger that records the deleted DoctorID and OLD ConsultationFee in Doctor_Audit. Delete a test doctor and verify the audit record. */

DELIMITER //
CREATE TRIGGER trg_doctor_delete AFTER DELETE ON Doctors FOR EACH ROW INSERT INTO Doctor_Audit(DoctorID,ActionType,OldFee) VALUES(OLD.DoctorID,'DELETE',OLD.ConsultationFee); //
DELIMITER ;

/* Full Question: Create an AFTER INSERT trigger on Doctors that records the new DoctorID, action type, and new ConsultationFee in Doctor_Audit. Insert a test doctor and verify the audit table. */

DELIMITER //
CREATE TRIGGER trg_doctor_insert AFTER INSERT ON Doctors FOR EACH ROW INSERT INTO Doctor_Audit(DoctorID,ActionType,NewFee) VALUES(NEW.DoctorID,'INSERT',NEW.ConsultationFee); //
DELIMITER ;

/* Full Question: Create an AFTER UPDATE trigger that records an audit event when a doctor's Department changes. Change one department and verify the audit table. */

DELIMITER //
CREATE TRIGGER trg_department_audit AFTER UPDATE ON Doctors FOR EACH ROW BEGIN IF OLD.Department<>NEW.Department THEN INSERT INTO Doctor_Audit(DoctorID,ActionType,OldFee,NewFee) VALUES(NEW.DoctorID,'DEPARTMENT_CHANGED',OLD.ConsultationFee,NEW.ConsultationFee); END IF; END //
DELIMITER ;

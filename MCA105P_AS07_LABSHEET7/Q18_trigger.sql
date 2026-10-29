/* Full Question: Create a BEFORE UPDATE trigger that normalizes a Status value of 'active' to 'Active'. Test it by updating a doctor. */

DELIMITER //
CREATE TRIGGER trg_status_normalize BEFORE UPDATE ON Doctors FOR EACH ROW SET NEW.Status=IF(LOWER(NEW.Status)='active','Active',NEW.Status); //
DELIMITER ;

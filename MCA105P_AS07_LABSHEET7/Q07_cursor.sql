/* Full Question: Create a cursor procedure that changes Status to 'Review' for doctors whose ConsultationFee is below 1000. Verify the affected rows. */

DELIMITER //
CREATE PROCEDURE cursor_task_7()
BEGIN
DECLARE done INT DEFAULT FALSE; DECLARE v_id INT; DECLARE cur CURSOR FOR SELECT DoctorID FROM Doctors WHERE ConsultationFee<1000; DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE; OPEN cur; read_loop: LOOP FETCH cur INTO v_id; IF done THEN LEAVE read_loop; END IF; UPDATE Doctors SET Status='Review' WHERE DoctorID=v_id; END LOOP; CLOSE cur;
END //
DELIMITER ;
CALL cursor_task_7();

/* Full Question: Create a cursor procedure that gives a 5% fee increase to every doctor whose ConsultationFee is at least 1200. Execute it and verify the updated fees. */

DELIMITER //
CREATE PROCEDURE cursor_task_10()
BEGIN
DECLARE done INT DEFAULT FALSE; DECLARE v_id INT; DECLARE cur CURSOR FOR SELECT DoctorID FROM Doctors WHERE ConsultationFee>=1200; DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE; OPEN cur; read_loop: LOOP FETCH cur INTO v_id; IF done THEN LEAVE read_loop; END IF; UPDATE Doctors SET ConsultationFee=ConsultationFee*1.05 WHERE DoctorID=v_id; END LOOP; CLOSE cur;
END //
DELIMITER ;
CALL cursor_task_10();

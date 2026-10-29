/* Full Question: Create a cursor procedure that displays doctors whose ConsultationFee is greater than 1000. Test the procedure. */

DELIMITER //
CREATE PROCEDURE cursor_task_2()
BEGIN
DECLARE done INT DEFAULT FALSE; DECLARE v_id INT; DECLARE v_name VARCHAR(50); DECLARE v_fee DECIMAL(10,2); DECLARE cur CURSOR FOR SELECT DoctorID,DoctorName,ConsultationFee FROM Doctors WHERE ConsultationFee>1000; DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE; OPEN cur; read_loop: LOOP FETCH cur INTO v_id,v_name,v_fee; IF done THEN LEAVE read_loop; END IF; SELECT v_id,v_name,v_fee; END LOOP; CLOSE cur;
END //
DELIMITER ;
CALL cursor_task_2();

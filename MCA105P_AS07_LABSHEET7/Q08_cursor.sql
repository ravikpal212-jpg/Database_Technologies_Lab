/* Full Question: Create a cursor-based doctor report that processes rows ordered by Department and DoctorName and displays DoctorName, Department, and ConsultationFee. */

DELIMITER //
CREATE PROCEDURE cursor_task_8()
BEGIN
DECLARE done INT DEFAULT FALSE; DECLARE v_name VARCHAR(50); DECLARE v_dept VARCHAR(40); DECLARE v_fee DECIMAL(10,2); DECLARE cur CURSOR FOR SELECT DoctorName,Department,ConsultationFee FROM Doctors ORDER BY Department,DoctorName; DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE; OPEN cur; read_loop: LOOP FETCH cur INTO v_name,v_dept,v_fee; IF done THEN LEAVE read_loop; END IF; SELECT v_name,v_dept,v_fee; END LOOP; CLOSE cur;
END //
DELIMITER ;
CALL cursor_task_8();

/* Full Question: Create a cursor procedure to calculate the average ConsultationFee of all doctors. Handle the case where no rows are available. */

DELIMITER //
CREATE PROCEDURE cursor_task_5(OUT p_avg DECIMAL(10,2))
BEGIN
DECLARE done INT DEFAULT FALSE; DECLARE v_fee DECIMAL(10,2); DECLARE v_count INT DEFAULT 0; DECLARE cur CURSOR FOR SELECT ConsultationFee FROM Doctors; DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE; SET p_avg=0; OPEN cur; read_loop: LOOP FETCH cur INTO v_fee; IF done THEN LEAVE read_loop; END IF; SET p_avg=p_avg+v_fee; SET v_count=v_count+1; END LOOP; CLOSE cur; IF v_count>0 THEN SET p_avg=p_avg/v_count; ELSE SET p_avg=NULL; END IF;
END //
DELIMITER ;
CALL cursor_task_5(@result);
SELECT @result;

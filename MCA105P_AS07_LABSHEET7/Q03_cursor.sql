/* Full Question: Create a cursor procedure with an OUT parameter to calculate the total ConsultationFee of all doctors. Call it and display the OUT value. */

DELIMITER //
CREATE PROCEDURE cursor_task_3(OUT p_total DECIMAL(12,2))
BEGIN
DECLARE done INT DEFAULT FALSE; DECLARE v_fee DECIMAL(10,2); DECLARE cur CURSOR FOR SELECT ConsultationFee FROM Doctors; DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE; SET p_total=0; OPEN cur; read_loop: LOOP FETCH cur INTO v_fee; IF done THEN LEAVE read_loop; END IF; SET p_total=p_total+v_fee; END LOOP; CLOSE cur;
END //
DELIMITER ;
CALL cursor_task_3(@result);
SELECT @result;

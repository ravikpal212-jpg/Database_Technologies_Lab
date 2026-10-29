/* Full Question: Create a cursor procedure with an OUT parameter to count all doctors whose Status is 'Active'. Execute it and display the count. */

DELIMITER //
CREATE PROCEDURE cursor_task_9(OUT p_count INT)
BEGIN
DECLARE done INT DEFAULT FALSE; DECLARE v_id INT; DECLARE cur CURSOR FOR SELECT DoctorID FROM Doctors WHERE Status='Active'; DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE; SET p_count=0; OPEN cur; read_loop: LOOP FETCH cur INTO v_id; IF done THEN LEAVE read_loop; END IF; SET p_count=p_count+1; END LOOP; CLOSE cur;
END //
DELIMITER ;
CALL cursor_task_9(@result);
SELECT @result;

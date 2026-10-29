/* Full Question: Create a cursor procedure with an OUT parameter to count doctors belonging to the Cardiology department. Execute it and display the result. */

DELIMITER //
CREATE PROCEDURE cursor_task_4(OUT p_count INT)
BEGIN
DECLARE done INT DEFAULT FALSE; DECLARE v_dept VARCHAR(40); DECLARE cur CURSOR FOR SELECT Department FROM Doctors WHERE Department='Cardiology'; DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE; SET p_count=0; OPEN cur; read_loop: LOOP FETCH cur INTO v_dept; IF done THEN LEAVE read_loop; END IF; SET p_count=p_count+1; END LOOP; CLOSE cur;
END //
DELIMITER ;
CALL cursor_task_4(@result);
SELECT @result;

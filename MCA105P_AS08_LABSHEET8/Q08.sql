/* Full Question: Create a stored procedure medicine_count(OUT p_count) that returns the total number of medicines. Call it using a session variable and display the result. */

DELIMITER //
CREATE PROCEDURE medicine_count(OUT p_count INT) BEGIN SELECT COUNT(*) INTO p_count FROM Medicines; END //
DELIMITER ;
CALL medicine_count(@total); SELECT @total AS medicine_count;

/* Full Question: Create a stored procedure named StudentsBetweenMarks that accepts two marks values and displays students whose marks are between the two values. Test it using 70 and 90. */

DELIMITER //
CREATE PROCEDURE StudentsBetweenMarks(IN p_low DECIMAL(5,2), IN p_high DECIMAL(5,2)) BEGIN SELECT * FROM Student WHERE Marks BETWEEN p_low AND p_high; END //
DELIMITER ;
CALL StudentsBetweenMarks(70,90);

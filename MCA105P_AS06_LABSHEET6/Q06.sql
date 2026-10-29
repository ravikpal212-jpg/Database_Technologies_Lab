/* Full Question: Create a stored procedure named StudentsAboveMarks that accepts marks as an IN parameter and displays students whose marks are greater than the given value. Test it using 80. */

DELIMITER //
CREATE PROCEDURE StudentsAboveMarks(IN p_marks DECIMAL(5,2)) BEGIN SELECT * FROM Student WHERE Marks>p_marks; END //
DELIMITER ;
CALL StudentsAboveMarks(80);

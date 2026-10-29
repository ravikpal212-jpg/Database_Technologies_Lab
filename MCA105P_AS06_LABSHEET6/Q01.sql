/* Full Question: Create a stored procedure named ShowStudents to display all records from the Student table. */

DELIMITER //
CREATE PROCEDURE ShowStudents() BEGIN SELECT * FROM Student; END //
DELIMITER ;
CALL ShowStudents();

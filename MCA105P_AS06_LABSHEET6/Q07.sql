/* Full Question: Create a stored procedure named TotalStudents that calculates and displays the total number of students in the Student table. */

DELIMITER //
CREATE PROCEDURE TotalStudents() BEGIN SELECT COUNT(*) AS total_students FROM Student; END //
DELIMITER ;
CALL TotalStudents();

/* Full Question: Create a stored procedure named ShowCourses to display all records from the Course table. */

DELIMITER //
CREATE PROCEDURE ShowCourses() BEGIN SELECT * FROM Course; END //
DELIMITER ;
CALL ShowCourses();

/* Full Question: Create a stored procedure named ShowDepartments to display all records from the Department table. */

DELIMITER //
CREATE PROCEDURE ShowDepartments() BEGIN SELECT * FROM Department; END //
DELIMITER ;
CALL ShowDepartments();

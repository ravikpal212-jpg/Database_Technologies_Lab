/* Full Question: Create a stored procedure named GetStudentsByGender that accepts Gender as an IN parameter and displays students of that gender. Test it using Female. */

DELIMITER //
CREATE PROCEDURE GetStudentsByGender(IN p_gender VARCHAR(10)) BEGIN SELECT * FROM Student WHERE Gender=p_gender; END //
DELIMITER ;
CALL GetStudentsByGender('Female');

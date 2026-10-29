/* Full Question: Create a stored procedure named GetStudent that accepts StudentID as an IN parameter and displays the details of that student. Test it using StudentID 3. */

DELIMITER //
CREATE PROCEDURE GetStudent(IN p_id INT) BEGIN SELECT * FROM Student WHERE StudentID=p_id; END //
DELIMITER ;
CALL GetStudent(3);

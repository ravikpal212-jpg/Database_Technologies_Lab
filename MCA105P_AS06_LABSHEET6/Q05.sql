/* Full Question: Create a stored procedure named GetStudentsByDept that accepts DeptID as an IN parameter and displays all students belonging to that department. Test it using DeptID 102. */

DELIMITER //
CREATE PROCEDURE GetStudentsByDept(IN p_dept INT) BEGIN SELECT * FROM Student WHERE DeptID=p_dept; END //
DELIMITER ;
CALL GetStudentsByDept(102);

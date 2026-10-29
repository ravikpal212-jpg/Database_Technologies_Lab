/* Full Question: Create a stored procedure named CheckResult that accepts StudentID as an IN parameter. If marks are 50 or above, display Pass; otherwise display Fail. */

DELIMITER //
CREATE PROCEDURE CheckResult(IN p_id INT) BEGIN SELECT StudentID, IF(Marks>=50,'Pass','Fail') AS Result FROM Student WHERE StudentID=p_id; END //
DELIMITER ;
CALL CheckResult(3);

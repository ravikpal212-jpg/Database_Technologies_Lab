/* Full Question: Create a stored procedure patients_above_age(IN p_age) that displays patients older than the supplied age. Test it with at least two different ages. */

DELIMITER //
CREATE PROCEDURE patients_above_age(IN p_age INT) BEGIN SELECT * FROM Patients WHERE Age>p_age; END //
DELIMITER ;
CALL patients_above_age(25); CALL patients_above_age(40);

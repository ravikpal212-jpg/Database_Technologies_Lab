/* Full Question: Create a stored procedure patient_by_gender(IN p_gender) that displays patients of the supplied gender. Execute it for F and M. */

DELIMITER //
CREATE PROCEDURE patient_by_gender(IN p_gender VARCHAR(10)) BEGIN SELECT * FROM Patients WHERE Gender=p_gender; END //
DELIMITER ;
CALL patient_by_gender('F'); CALL patient_by_gender('M');

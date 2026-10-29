/* Full Question: Create a function named StudentGrade that accepts marks and returns A for 90 or above, B for 75–89, C for 60–74, and D for below 60. */

DELIMITER //
CREATE FUNCTION StudentGrade(m DECIMAL(5,2)) RETURNS CHAR(1) DETERMINISTIC RETURN CASE WHEN m>=90 THEN 'A' WHEN m>=75 THEN 'B' WHEN m>=60 THEN 'C' ELSE 'D' END //
DELIMITER ;
SELECT StudentGrade(85);

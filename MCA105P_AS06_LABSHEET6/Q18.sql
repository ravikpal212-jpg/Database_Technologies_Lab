/* Full Question: Create a function named DoubleMarks that accepts marks and returns twice the marks. */

DELIMITER //
CREATE FUNCTION DoubleMarks(m DECIMAL(5,2)) RETURNS DECIMAL(6,2) DETERMINISTIC RETURN m*2 //
DELIMITER ;
SELECT DoubleMarks(75);

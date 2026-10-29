/* Full Question: Create a function named HigherNumber that accepts two integers and returns the greater number. */

DELIMITER //
CREATE FUNCTION HigherNumber(a INT,b INT) RETURNS INT DETERMINISTIC RETURN GREATEST(a,b) //
DELIMITER ;
SELECT HigherNumber(10,20);

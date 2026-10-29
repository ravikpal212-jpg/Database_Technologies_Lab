/* Full Question: Create a function named ResultStatus that accepts marks and returns Pass if marks are 50 or above; otherwise return Fail. */

DELIMITER //
CREATE FUNCTION ResultStatus(m DECIMAL(5,2)) RETURNS VARCHAR(10) DETERMINISTIC RETURN IF(m>=50,'Pass','Fail') //
DELIMITER ;
SELECT ResultStatus(75);

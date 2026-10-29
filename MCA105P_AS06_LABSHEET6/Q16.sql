/* Full Question: Create a function named CalculateBonus that accepts marks and returns 1000 for 90 or above, 500 for 75–89, and 200 for below 75. */

DELIMITER //
CREATE FUNCTION CalculateBonus(m DECIMAL(5,2)) RETURNS INT DETERMINISTIC RETURN CASE WHEN m>=90 THEN 1000 WHEN m>=75 THEN 500 ELSE 200 END //
DELIMITER ;
SELECT CalculateBonus(92);

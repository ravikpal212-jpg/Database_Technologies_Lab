/* Full Question: Create a function named AgeAfterFiveYears that accepts current age and returns the age after five years. */

DELIMITER //
CREATE FUNCTION AgeAfterFiveYears(a INT) RETURNS INT DETERMINISTIC RETURN a+5 //
DELIMITER ;
SELECT AgeAfterFiveYears(20);

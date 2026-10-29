/* Full Question: Create a function named AgeCategory that accepts age and returns Adult if age is 18 or above; otherwise return Minor. */

DELIMITER //
CREATE FUNCTION AgeCategory(a INT) RETURNS VARCHAR(10) DETERMINISTIC RETURN IF(a>=18,'Adult','Minor') //
DELIMITER ;
SELECT AgeCategory(20);

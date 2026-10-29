/* Full Question: Create a function named FindSquare that accepts an integer and returns its square. Test it with 5. */

DELIMITER //
CREATE FUNCTION FindSquare(n INT) RETURNS INT DETERMINISTIC RETURN n*n //
DELIMITER ;
SELECT FindSquare(5);

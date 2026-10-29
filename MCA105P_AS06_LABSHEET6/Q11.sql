/* Full Question: Create a function named AddTwoNumbers that accepts two integers and returns their sum. Test it with 10 and 20. */

DELIMITER //
CREATE FUNCTION AddTwoNumbers(a INT,b INT) RETURNS INT DETERMINISTIC RETURN a+b //
DELIMITER ;
SELECT AddTwoNumbers(10,20);

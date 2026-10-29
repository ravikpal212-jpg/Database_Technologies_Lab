/* Full Question: Create a function calculate_bmi(weight_kg, height_m) that returns BMI. Test it with suitable values and record the result. */

DELIMITER //
CREATE FUNCTION calculate_bmi(weight_kg DECIMAL(6,2), height_m DECIMAL(4,2)) RETURNS DECIMAL(6,2) DETERMINISTIC RETURN weight_kg/(height_m*height_m) //
DELIMITER ;
SELECT calculate_bmi(70,1.75);

/* Full Question: Create a function medicine_stock_value(unit_price, stock) that returns UnitPrice × Stock. Display the stock value for every medicine. */

DELIMITER //
CREATE FUNCTION medicine_stock_value(unit_price DECIMAL(10,2), p_stock INT) RETURNS DECIMAL(12,2) DETERMINISTIC RETURN unit_price*p_stock //
DELIMITER ;
SELECT MedicineName,medicine_stock_value(UnitPrice,Stock) AS stock_value FROM Medicines;

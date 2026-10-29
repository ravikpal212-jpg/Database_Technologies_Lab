/* Full Question: Create a stored procedure medicine_report() that displays MedicineID, MedicineName, UnitPrice, Stock, stock value using your medicine_stock_value function, and a readable stock status. */

DELIMITER //
CREATE PROCEDURE medicine_report() BEGIN SELECT MedicineID,MedicineName,UnitPrice,Stock,medicine_stock_value(UnitPrice,Stock) AS stock_value,CASE WHEN Stock<30 THEN 'Low stock' WHEN Stock<75 THEN 'Medium stock' ELSE 'Good stock' END AS stock_status FROM Medicines; END //
DELIMITER ;
CALL medicine_report();

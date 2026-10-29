/* Full Question: Create a stored procedure update_medicine_stock(IN p_id, IN p_quantity) that increases stock for the selected medicine. Execute it and verify the changed row. */

DELIMITER //
CREATE PROCEDURE update_medicine_stock(IN p_id INT, IN p_quantity INT) BEGIN UPDATE Medicines SET Stock=Stock+p_quantity WHERE MedicineID=p_id; SELECT * FROM Medicines WHERE MedicineID=p_id; END //
DELIMITER ;
CALL update_medicine_stock(301,10);

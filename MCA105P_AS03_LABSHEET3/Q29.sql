/* Full Question: TCL - Granular Row-Level Batch Insert Recovery] As 'manager'@'localhost', write a transaction script that inserts order 5008, sets savepoint sp_5008, inserts order 5009, sets savepoint sp_5009, and rolls back to sp_5008 if order 5009 fails business rules. Target Context: Active Session: 'manager'@'localhost' | orders table (order 5001 to 5005 baseline) */

START TRANSACTION;
INSERT INTO orders(order_id,customer_name,order_date,total_amount,status) VALUES(5008,'Test Customer','2024-02-01',750,'Pending');
SAVEPOINT sp_5008;
INSERT INTO orders(order_id,customer_name,order_date,total_amount,status) VALUES(5009,'Test Customer','2024-02-02',100,'Pending');
SAVEPOINT sp_5009;
-- If order 5009 violates business rules: ROLLBACK TO SAVEPOINT sp_5008; otherwise COMMIT;

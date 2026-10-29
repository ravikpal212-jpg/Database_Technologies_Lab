/* Full Question: TCL - Order Status Workflow Rollback] As 'manager'@'localhost', write a transaction script to update order 5002 status to 'Shipped', validate condition, and roll back if total_amount < 500. Target Context: Active Session: 'manager'@'localhost' | orders: order 5002 (450.00, Pending) Q20. [DCL - Role-Based Access Control (RBAC)] Write statements to create role 'reporter_role', grant SELECT on company_db.* to it, and assign the role to pre-created user 'analyst'@'localhost'. Target Context: Target Account: 'analyst'@'localhost' (Pre-created, Level 1) */

START TRANSACTION;
UPDATE orders SET status='Shipped' WHERE order_id=5002;
SELECT total_amount FROM orders WHERE order_id=5002;
-- Given total_amount is 450 (<500), undo the status change
ROLLBACK;

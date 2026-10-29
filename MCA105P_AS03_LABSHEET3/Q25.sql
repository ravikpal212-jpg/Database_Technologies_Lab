/* Full Question: TCL - Order Cancellation Sync Workflow] As 'manager'@'localhost', write a guarded transaction script to cancel order 5002 (status = 'Cancelled') and refund $450.00 to dept 20 budget. Target Context: Active Session: 'manager'@'localhost' | orders 5002 (450.00, Pending); dept 20 budget (200,000.00) */

START TRANSACTION;
UPDATE orders SET status='Cancelled' WHERE order_id=5002 AND status='Pending';
UPDATE departments SET budget=budget+450 WHERE dept_id=20;
COMMIT;

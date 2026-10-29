/* Full Question: [TCL - Multi-Step Savepoint Workflow] As 'hr_assistant'@'localhost', write a transaction block to update salary for emp_101 to 80000.00, create savepoint sp_first, update salary for emp_102 to 95000.00, roll back to sp_first, and commit. */

START TRANSACTION;
UPDATE employees SET salary=80000.00 WHERE emp_id=101;
SAVEPOINT sp_first;
UPDATE employees SET salary=95000.00 WHERE emp_id=102;
ROLLBACK TO SAVEPOINT sp_first;
COMMIT;

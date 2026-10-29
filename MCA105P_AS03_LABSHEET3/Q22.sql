/* Full Question: TCL - Exclusive Pessimistic Locking (FOR UPDATE)] As 'hr_assistant'@'localhost', write a transaction script to lock employee row emp_id 101 exclusively using SELECT ... FOR UPDATE before applying a salary update to 88000.00. Target Context: Active Session: 'hr_assistant'@'localhost' | Table: company_db.employees (emp_101) */

START TRANSACTION;
SELECT * FROM company_db.employees WHERE emp_id=101 FOR UPDATE;
UPDATE company_db.employees SET salary=88000 WHERE emp_id=101;
COMMIT;

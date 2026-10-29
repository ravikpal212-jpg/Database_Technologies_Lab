/* Full Question: TCL - Implicit Commit via DDL Hazard] As 'dev_user'@'localhost', write a code sequence demonstrating what happens when ALTER TABLE is executed inside an uncommitted transaction updating salary. Target Context: Active Session: 'dev_user'@'localhost' | employees (Active uncommitted UPDATE salary = 85000 for emp_101) */

START TRANSACTION;
UPDATE employees SET salary=85000 WHERE emp_id=101;
ALTER TABLE employees ADD COLUMN demo_col INT; -- DDL implicitly commits in MySQL
ROLLBACK; -- cannot undo the committed update before ALTER

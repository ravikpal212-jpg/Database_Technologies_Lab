/* Full Question: TCL - Shared Read Locking (FOR SHARE)] As 'analyst'@'localhost', write a transaction script to lock department 10 row in shared mode using SELECT ... FOR SHARE before generating an analytical report. Target Context: Active Session: 'analyst'@'localhost' | Table: company_db.departments (dept_10) */

START TRANSACTION;
SELECT * FROM company_db.departments WHERE dept_id=10 FOR SHARE;
SELECT e.*, d.dept_name FROM company_db.employees e JOIN company_db.departments d ON e.dept_id=d.dept_id WHERE d.dept_id=10;
COMMIT;

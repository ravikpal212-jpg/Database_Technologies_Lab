/* Full Question: TCL - Conditional Multi-Table Transaction] As 'dev_user'@'localhost', write a transaction script that raises dept 10 salaries by 15%, sets savepoint sp_salary_done, increases dept 10 budget by 50000.00, and rolls back to savepoint if budget exceeds 520000.00. Target Context: Active Session: 'dev_user'@'localhost' | employees dept 10 salary = 157k; departments dept 10 budget = 500k */

START TRANSACTION;
UPDATE employees SET salary=salary*1.15 WHERE dept_id=10;
SAVEPOINT sp_salary_done;
UPDATE departments SET budget=budget+50000 WHERE dept_id=10;
-- If budget exceeds 520000: ROLLBACK TO SAVEPOINT sp_salary_done; otherwise COMMIT;

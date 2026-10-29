/* Full Question: TCL - Financial Budget Transfer] As 'finance_user'@'localhost', write a transaction script to transfer $10,000 budget from Department 10 to Department 20 atomically. Target Context: Active Session: 'finance_user'@'localhost' | departments: dept_10 = 500000, dept_20 = 200000 */

START TRANSACTION;
UPDATE departments SET budget=budget-10000 WHERE dept_id=10;
UPDATE departments SET budget=budget+10000 WHERE dept_id=20;
COMMIT;

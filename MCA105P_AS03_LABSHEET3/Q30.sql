/* Full Question: DCL & TCL - Complete Administrative Maintenance Script] Write a complete maintenance script that creates 'test_maint'@'localhost', grants SELECT, INSERT, UPDATE, executes a transaction block that updates emp_104 active status and rolls back, audits grants, revokes permissions, and locks the account. */

CREATE USER 'test_maint'@'localhost' IDENTIFIED BY 'ChangeMe_2026!';
GRANT SELECT, INSERT, UPDATE ON company_db.* TO 'test_maint'@'localhost';
START TRANSACTION; UPDATE employees SET is_active=FALSE WHERE emp_id=104; ROLLBACK;
SHOW GRANTS FOR 'test_maint'@'localhost';
REVOKE SELECT, INSERT, UPDATE ON company_db.* FROM 'test_maint'@'localhost';
ALTER USER 'test_maint'@'localhost' ACCOUNT LOCK;

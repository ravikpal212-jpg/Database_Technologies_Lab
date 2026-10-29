/* Full Question: DCL - Multi-Privilege GRANT] Write a statement to grant SELECT and INSERT permissions on company_db.employees to pre-created user 'alice'@'localhost'. Target Context: Target Account: 'alice'@'localhost' (Pre-created, Level 0) | Scope: company_db.employees Q03. [DCL - REVOKE Privilege] Revoke INSERT privilege on company_db.employees from user 'alice'@'localhost'. Target Context: Target Account: 'alice'@'localhost' | Active Grants: SELECT, INSERT on company_db.employees */

GRANT SELECT, INSERT ON company_db.employees TO 'alice'@'localhost';

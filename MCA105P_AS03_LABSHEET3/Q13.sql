/* Full Question: DCL - Selective Privilege Revocation] Revoke UPDATE permission on company_db.employees from pre-created user 'hr_assistant'@'localhost' while keeping SELECT intact. Target Context: Target Account: 'hr_assistant'@'localhost' (Pre-created, Level 2: SELECT, UPDATE on employees) */

REVOKE UPDATE ON company_db.employees FROM 'hr_assistant'@'localhost';

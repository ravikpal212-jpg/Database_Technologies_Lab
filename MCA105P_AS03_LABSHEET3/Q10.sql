/* Full Question: DCL - Revoking ALL Privileges] Revoke ALL privileges and grant options from pre- created user 'intern_user'@'localhost' on company_db.*. Target Context: Target Account: 'intern_user'@'localhost' (Level 0) */

REVOKE ALL PRIVILEGES, GRANT OPTION ON company_db.* FROM 'intern_user'@'localhost';

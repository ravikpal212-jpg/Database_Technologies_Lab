/* Full Question: TCL - Read-Only Transaction Mode] As 'analyst'@'localhost', write statements to configure transaction mode to READ ONLY before running reporting SELECT queries. Target Context: Active Session: 'analyst'@'localhost' (Pre-created, Level 1: SELECT on company_db.*) */

SET TRANSACTION READ ONLY;
START TRANSACTION;
SELECT * FROM company_db.employees;
COMMIT;

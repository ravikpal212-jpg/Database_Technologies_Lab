/* Full Question: Basic DCL - GRANT Read Access] Write a MySQL statement to grant SELECT permission on database company_db to pre-created user 'john'@'localhost'. Target Context: Target Account: 'john'@'localhost' (Pre-created, Level 0: No privileges) | Scope: company_db.* */

GRANT SELECT ON company_db.* TO 'john'@'localhost';

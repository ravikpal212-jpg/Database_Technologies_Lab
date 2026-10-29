/* Full Question: [DCL - Role-Based Access Control (RBAC)] Write statements to create role 'reporter_role', grant SELECT on company_db.* to it, and assign the role to pre-created user 'analyst'@'localhost'. */

CREATE ROLE 'reporter_role';
GRANT SELECT ON company_db.* TO 'reporter_role';
GRANT 'reporter_role' TO 'analyst'@'localhost';
SET DEFAULT ROLE 'reporter_role' TO 'analyst'@'localhost';

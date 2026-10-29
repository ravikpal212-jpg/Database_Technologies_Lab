/* Full Question: DCL - Role Inheritance Hierarchy] Write statements to create roles read_role, write_role, admin_role, configure role inheritance, create user 'super_dev'@'localhost', and assign admin_role. Target Context: Database: company_db */

CREATE ROLE 'read_role'; CREATE ROLE 'write_role'; CREATE ROLE 'admin_role';
GRANT SELECT ON company_db.* TO 'read_role';
GRANT INSERT, UPDATE ON company_db.* TO 'write_role';
GRANT 'read_role', 'write_role' TO 'admin_role';
CREATE USER 'super_dev'@'localhost' IDENTIFIED BY 'ChangeMe_2026!';
GRANT 'admin_role' TO 'super_dev'@'localhost';
SET DEFAULT ROLE 'admin_role' TO 'super_dev'@'localhost';

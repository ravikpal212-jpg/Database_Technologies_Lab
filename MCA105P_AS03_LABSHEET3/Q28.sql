/* Full Question: DCL - Encrypted Transport (TLS/SSL) Enforcement] Write statements to create remote user 'cloud_user'@'%' requiring mandatory SSL/TLS encryption for database connections and granting SELECT, INSERT. Target Context: Target: Remote account 'cloud_user'@'%' */

CREATE USER 'cloud_user'@'%' IDENTIFIED BY 'ChangeMe_2026!' REQUIRE SSL;
GRANT SELECT, INSERT ON company_db.* TO 'cloud_user'@'%';

/* Full Question: DCL - Account Resource Throttling] Audit pre-created user 'auditor'@'localhost' and write an ALTER USER statement applying query rate limits (100 queries/hr, max 2 user connections). Target Context: Target Account: 'auditor'@'localhost' (Pre-created, Level 1: SELECT on company_db.*) */

ALTER USER 'auditor'@'localhost' WITH MAX_QUERIES_PER_HOUR 100 MAX_USER_CONNECTIONS 2;
SHOW GRANTS FOR 'auditor'@'localhost';

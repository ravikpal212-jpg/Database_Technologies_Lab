/* Full Question: DCL - Global Admin GRANT] Grant ALL privileges on all databases to pre-created account 'admin_user'@'%' connecting from any host. Target Context: Target Account: 'admin_user'@'%' (Pre-created, Level 0) | Scope: Global (*.*) */

GRANT ALL PRIVILEGES ON *.* TO 'admin_user'@'%' WITH GRANT OPTION;

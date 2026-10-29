/* Full Question: DCL - Revoking Delegation Rights] Write the command to revoke GRANT OPTION from pre-created user 'team_lead'@'localhost' without revoking base permissions. Target Context: Target Account: 'team_lead'@'localhost' (Has SELECT, INSERT, GRANT OPTION) */

REVOKE GRANT OPTION ON company_db.* FROM 'team_lead'@'localhost';

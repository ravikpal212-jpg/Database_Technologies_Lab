-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 29: Multi-Field Enums and Flags
-- Full Question: Create a table user_accounts with user_id (BIGINT Primary Key), account_type (ENUM('Standard', 'Premium', 'Admin')), and created_timestamp (TIMESTAMP).

CREATE TABLE user_accounts (user_id BIGINT PRIMARY KEY, account_type ENUM('Standard', 'Premium', 'Admin'), created_timestamp TIMESTAMP);

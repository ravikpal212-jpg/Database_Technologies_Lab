-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 26: Modifying Keys and Data Types
-- Full Question: Write a DDL command to change the bio column in user_profiles from TEXT to MEDIUMTEXT.

ALTER TABLE user_profiles MODIFY COLUMN bio MEDIUMTEXT;

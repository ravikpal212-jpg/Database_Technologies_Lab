-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 14: Modifying Data Types
-- Full Question: Write a command to change the data type of email in employees from VARCHAR(100) to VARCHAR(150).

ALTER TABLE employees MODIFY COLUMN email VARCHAR(150);

-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 04: Date and Time Data Types
-- Full Question: Create a table audit_logs storing log_id (Primary Key), action (TEXT), and created_at using TIMESTAMP.

CREATE TABLE audit_logs (log_id INT PRIMARY KEY, action TEXT, created_at TIMESTAMP);

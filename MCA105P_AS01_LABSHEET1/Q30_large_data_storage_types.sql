-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 30: Large Data Storage Types
-- Full Question: Create a table device_logs with log_id (BIGINT Primary Key), ip_address (VARCHAR 45), and payload (LONGBLOB).

CREATE TABLE device_logs (log_id BIGINT PRIMARY KEY, ip_address VARCHAR(45), payload LONGBLOB);

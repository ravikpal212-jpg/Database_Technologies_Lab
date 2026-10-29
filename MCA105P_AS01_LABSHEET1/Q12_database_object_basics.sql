-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 12: Database Object Basics
-- Full Question: Create a table ticket_orders with ticket_id (Primary Key) and priority_level restricted to ENUM('Low', 'Medium', 'High').

CREATE TABLE ticket_orders (ticket_id INT PRIMARY KEY, priority_level ENUM('Low', 'Medium', 'High'));

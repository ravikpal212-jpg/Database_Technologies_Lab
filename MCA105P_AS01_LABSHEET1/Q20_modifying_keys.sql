-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 20: Modifying Keys
-- Full Question: Re-add a primary key to column client_id in clients after table creation using an ALTER command.

ALTER TABLE clients ADD PRIMARY KEY (client_id);

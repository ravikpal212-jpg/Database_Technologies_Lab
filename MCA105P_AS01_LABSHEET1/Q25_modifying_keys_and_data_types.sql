-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 25: Modifying Keys and Data Types
-- Full Question: Given table inventory with columns warehouse_id (INT) and sku (VARCHAR 20), write an ALTER statement to add a composite primary key to both columns.

ALTER TABLE inventory ADD PRIMARY KEY (warehouse_id, sku);

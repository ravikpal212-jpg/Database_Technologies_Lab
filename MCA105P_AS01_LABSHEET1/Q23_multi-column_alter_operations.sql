-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 23: Multi-Column ALTER Operations
-- Full Question: Modify the employees table to add two new columns in a single DDL statement: hire_date (DATE) and is_active (BOOLEAN).

ALTER TABLE employees ADD hire_date DATE, ADD is_active BOOLEAN;

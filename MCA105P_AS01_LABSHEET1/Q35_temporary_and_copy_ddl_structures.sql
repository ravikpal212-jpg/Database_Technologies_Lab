-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 35: Temporary and Copy DDL Structures
-- Full Question: Write a DDL command to create an empty table structure employees_archive identical in layout and constraints to the employees table.

CREATE TABLE employees_archive LIKE employees;

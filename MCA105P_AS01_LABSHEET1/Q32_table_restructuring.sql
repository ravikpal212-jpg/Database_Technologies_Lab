-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 32: Table Restructuring
-- Full Question: Convert start_date column in table projects to project_year with data type YEAR using a single DDL statement.

ALTER TABLE projects CHANGE COLUMN start_date project_year YEAR;

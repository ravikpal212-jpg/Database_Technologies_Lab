-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 27: Advanced Column Positioning and Datatypes
-- Full Question: Add a column middle_name (VARCHAR 30) to employees specifically positioned right after given_name.

ALTER TABLE employees ADD middle_name VARCHAR(30) AFTER given_name;

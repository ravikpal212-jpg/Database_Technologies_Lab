-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 46: Table Restructuring
-- Full Question: Refactor student_enrollments by dropping the composite key (student_id, course_id, semester), adding enrollment_id (BIGINT) as the first column, and establishing it as the new primary key in a single statement.

ALTER TABLE student_enrollments DROP PRIMARY KEY, ADD COLUMN enrollment_id BIGINT FIRST, ADD PRIMARY KEY (enrollment_id);

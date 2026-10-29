/* Full Question: Add a CHECK constraint to Student so that Age must be greater than 18. Test an invalid record. */

ALTER TABLE Student ADD CONSTRAINT chk_student_age CHECK (Age > 18);
-- Test: INSERT with Age=17; the check rejects it in MySQL versions enforcing CHECK constraints.

/* Full Question: Modify Student so that Email must be UNIQUE. Try inserting a duplicate email. */

ALTER TABLE Student ADD CONSTRAINT uq_student_email UNIQUE (Email);
-- A duplicate non-NULL email will be rejected.

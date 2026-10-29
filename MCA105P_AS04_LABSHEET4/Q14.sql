/* Full Question: Try inserting a Student without providing Name. What happens? */

INSERT INTO Student (StudentID,Age) VALUES (106,20);
-- Fails because Name is NOT NULL.

/* Full Question: Try to insert another student with StudentID = 101. What happens? */

INSERT INTO Student (StudentID,Name) VALUES (101,'Duplicate Student');
-- Fails: duplicate primary key.

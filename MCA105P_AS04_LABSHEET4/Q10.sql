/* Full Question: Try to insert an enrollment for StudentID = 999. Explain the result. */

INSERT INTO Enrollment VALUES (5,999,'DBMS');
-- With the foreign key enabled, this fails because student 999 does not exist.

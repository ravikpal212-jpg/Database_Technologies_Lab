/* Full Question: Try to insert another enrollment with EnrollmentID = 1. What happens? */

INSERT INTO Enrollment VALUES (1,105,'SQL');
-- Fails because EnrollmentID is a duplicate primary key.

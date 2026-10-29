/* Full Question: Display enrollment details together with the student name using an INNER JOIN. */

SELECT e.*, s.Name FROM Enrollment e INNER JOIN Student s ON e.StudentID=s.StudentID;

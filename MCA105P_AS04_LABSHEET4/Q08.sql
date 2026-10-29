/* Full Question: Add a FOREIGN KEY from Enrollment(StudentID) to Student(StudentID). */

ALTER TABLE Enrollment ADD CONSTRAINT fk_enrollment_student FOREIGN KEY (StudentID) REFERENCES Student(StudentID);

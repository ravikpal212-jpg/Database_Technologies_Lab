/* Full Question: Add a FOREIGN KEY from Student(DeptID) to Department(DeptID). */

ALTER TABLE Student ADD CONSTRAINT fk_student_department FOREIGN KEY (DeptID) REFERENCES Department(DeptID);

/* Full Question: Add JoiningDate to Student with the current date as its DEFAULT. Insert a student without specifying JoiningDate. */

ALTER TABLE Student MODIFY JoiningDate DATE DEFAULT (CURRENT_DATE);
INSERT INTO Student (StudentID,Name,Email,Age,DeptID) VALUES (106,'Test User','test2@example.com',21,10);

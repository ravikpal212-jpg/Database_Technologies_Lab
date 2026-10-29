/* Full Question: Display students together with their department names using an INNER JOIN. */

SELECT s.*, d.DeptName FROM Student s INNER JOIN Department d ON s.DeptID=d.DeptID;

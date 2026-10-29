/* Full Question: Using the StudentGrade() function, write a SELECT query to display StudentName, Marks and Grade for every student in the Student table. */

SELECT StudentName,Marks,StudentGrade(Marks) AS Grade FROM Student;

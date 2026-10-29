/* Full Question: Create a Course table where Credits must be between 1 and 6. Test an invalid record. */

CREATE TABLE Course (CourseID INT PRIMARY KEY, CourseName VARCHAR(100), Credits INT CHECK (Credits BETWEEN 1 AND 6));
-- Credits=7 violates CHECK.

/* Full Question: Create a Faculty table where Designation defaults to 'Lecturer'. Insert a faculty record. */

CREATE TABLE Faculty (FacultyID INT PRIMARY KEY, FacultyName VARCHAR(100), Designation VARCHAR(50) DEFAULT 'Lecturer');
INSERT INTO Faculty (FacultyID,FacultyName) VALUES (1,'Dr. Meera Sharma');

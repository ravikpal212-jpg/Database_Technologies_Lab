/* Full Question: Create a Department table where DeptName cannot be NULL. Try inserting a department without a name. */

CREATE TABLE Department2 (DeptID INT PRIMARY KEY, DeptName VARCHAR(50) NOT NULL);
INSERT INTO Department2 (DeptID) VALUES (1);
-- Fails because DeptName is NOT NULL.

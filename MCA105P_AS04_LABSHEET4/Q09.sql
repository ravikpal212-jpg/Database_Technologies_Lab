/* Full Question: Try to insert a student with DeptID = 99. Explain the result. */

INSERT INTO Student VALUES (106,'Test Student','test@example.com',20,99,'2026-07-12');
-- With the foreign key enabled, this fails because department 99 does not exist.

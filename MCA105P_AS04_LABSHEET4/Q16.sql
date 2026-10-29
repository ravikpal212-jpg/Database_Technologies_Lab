/* Full Question: Create a Library table where BookID must be UNIQUE. Insert five books. */

CREATE TABLE Library (BookID INT UNIQUE, Title VARCHAR(100), Author VARCHAR(100));
INSERT INTO Library VALUES (1,'DBMS','Korth'),(2,'Python','Lutz'),(3,'SQL','Date'),(4,'Networks','Tanenbaum'),(5,'OS','Galvin');

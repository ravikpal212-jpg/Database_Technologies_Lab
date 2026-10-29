/* Full Question: Insert at least three books, three members and three loans. */

INSERT INTO Books VALUES (1,'DBMS','Korth','ISBN001'),(2,'SQL','Date','ISBN002'),(3,'Python','Lutz','ISBN003');
INSERT INTO Members VALUES (1,'Amit','amit@example.com'),(2,'Priya','priya@example.com'),(3,'Rahul','rahul@example.com');
INSERT INTO Loans VALUES (1,1,1,CURRENT_DATE),(2,2,2,CURRENT_DATE),(3,3,3,CURRENT_DATE);

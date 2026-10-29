/* Full Question: Create Members with member_id as PRIMARY KEY, name as NOT NULL, email as UNIQUE. */

CREATE TABLE Members (member_id INT PRIMARY KEY, name VARCHAR(100) NOT NULL, email VARCHAR(100) UNIQUE);

/* Full Question: Create Books with book_id as PRIMARY KEY, title as NOT NULL, author, isbn as UNIQUE. */

CREATE TABLE Books (book_id INT PRIMARY KEY, title VARCHAR(150) NOT NULL, author VARCHAR(100), isbn VARCHAR(20) UNIQUE);

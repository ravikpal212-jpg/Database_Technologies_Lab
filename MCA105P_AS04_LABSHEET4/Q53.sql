/* Full Question: Create Loans with loan_id as PRIMARY KEY, book_id and member_id as FOREIGN KEYS. */

CREATE TABLE Loans (loan_id INT PRIMARY KEY, book_id INT, member_id INT, loan_date DATE, FOREIGN KEY(book_id) REFERENCES Books(book_id), FOREIGN KEY(member_id) REFERENCES Members(member_id));

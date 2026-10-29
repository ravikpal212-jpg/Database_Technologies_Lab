/* Full Question: Display loan details with book title and member name using joins. */

SELECT l.loan_id,b.title,m.name FROM Loans l JOIN Books b ON l.book_id=b.book_id JOIN Members m ON l.member_id=m.member_id;

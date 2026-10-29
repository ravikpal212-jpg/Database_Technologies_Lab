-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 38: Precision and Modifiers
-- Full Question: Add transaction_date (DATETIME) as the absolute first column in the financial_ledger table using ALTER.

ALTER TABLE financial_ledger ADD transaction_date DATETIME FIRST;

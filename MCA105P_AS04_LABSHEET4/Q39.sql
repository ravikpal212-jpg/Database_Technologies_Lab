/* Full Question: Change department to Senior Staff for employees hired before February 1, 2024. */

UPDATE employees SET department='Senior Staff' WHERE hire_date<'2024-02-01';

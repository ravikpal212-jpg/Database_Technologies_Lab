/* Full Question: TCL - Deadlock Handling Simulation] Write the dual-session transaction sequence between 'dev_user' and 'hr_assistant' that leads to InnoDB deadlock detection when updating employee records. Target Context: Session 1 ('dev_user') locks emp 101; Session 2 ('hr_assistant') locks emp 102. Session 1 requests 102; Session 2 requests 101. */

-- Session 1
START TRANSACTION; UPDATE employees SET salary=salary WHERE emp_id=101;
-- Session 2
START TRANSACTION; UPDATE employees SET salary=salary WHERE emp_id=102;
-- Session 1 then requests emp_id=102; Session 2 requests emp_id=101. InnoDB detects deadlock; retry rolled-back transaction.

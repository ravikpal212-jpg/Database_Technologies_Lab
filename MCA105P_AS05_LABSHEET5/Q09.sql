/* Full Question: Theta Join – Salary Range Assign each employee to the correct salary grade using >= and <= in the join condi on. */

SELECT e.EmpName,e.Salary,g.Grade FROM Employees e JOIN SalaryGrades g ON e.Salary BETWEEN g.MinSalary AND g.MaxSalary;

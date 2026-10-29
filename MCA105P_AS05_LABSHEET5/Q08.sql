/* Full Question: Theta Join – Greater Than Use a Theta Join to display employees whose salary is greater than a salary grade's minimum salary. */

SELECT e.EmpName,e.Salary,g.Grade FROM Employees e JOIN SalaryGrades g ON e.Salary>g.MinSalary;

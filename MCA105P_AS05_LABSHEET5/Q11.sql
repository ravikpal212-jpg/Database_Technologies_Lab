/* Full Question: Theta Join – Greater Than or Equal Display employee name, salary, and grade where employee salary is >= the grade minimum. */

SELECT e.EmpName,e.Salary,g.Grade FROM Employees e JOIN SalaryGrades g ON e.Salary>=g.MinSalary;

/* Full Question: Theta Join – Less Than Display employee names and salary grades where employee salary is less than the grade maximum salary. */

SELECT e.EmpName,e.Salary,g.Grade FROM Employees e JOIN SalaryGrades g ON e.Salary<g.MaxSalary;

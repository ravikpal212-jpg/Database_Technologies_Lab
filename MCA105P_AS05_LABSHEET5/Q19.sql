/* Full Question: Highest Paid Employee Find the highest-paid employee among matched employees and display name, department, and salary. */

SELECT d.DeptName,AVG(e.Salary) AS avg_salary FROM Employees e JOIN Departments d ON e.DeptID=d.DeptID GROUP BY d.DeptName HAVING AVG(e.Salary)>60000;

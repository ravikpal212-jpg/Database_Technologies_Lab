/* Full Question: HAVING Show departments whose average employee salary is greater than 60000. */

SELECT d.DeptName,AVG(e.Salary) AS average_salary FROM Employees e JOIN Departments d ON e.DeptID=d.DeptID GROUP BY d.DeptName;

/* Full Question: Average Salary Use INNER JOIN and GROUP BY to calculate average salary for each matched department. */

SELECT d.DeptName,COUNT(*) AS employee_count FROM Employees e JOIN Departments d ON e.DeptID=d.DeptID GROUP BY d.DeptName;

/* Full Question: Employee Count Use INNER JOIN, GROUP BY, and COUNT to show the number of employees in each matched department. */

SELECT DISTINCT d.DeptName FROM Employees e JOIN Departments d ON e.DeptID=d.DeptID;

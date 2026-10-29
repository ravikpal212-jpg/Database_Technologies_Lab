/* Full Question: Pharmacy Employees Use INNER JOIN and WHERE to display employees belonging to the Pharmacy department. */

SELECT e.* FROM Employees e INNER JOIN Departments d ON e.DeptID=d.DeptID WHERE d.DeptName='Pharmacy';

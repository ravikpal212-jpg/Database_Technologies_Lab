/* Full Question: Basic Inner Join Display employee names, department names, and department loca ons for employees with matching departments. */

SELECT e.EmpName,d.DeptName,d.Location FROM Employees e INNER JOIN Departments d ON e.DeptID=d.DeptID;

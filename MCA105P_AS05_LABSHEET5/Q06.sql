/* Full Question: Equi Join with Mul ple Columns Display employee name, employee city, department name, and department loca on using an equality- based join. */

SELECT e.EmpName,d.DeptName FROM Employees e JOIN Departments d ON e.DeptID=d.DeptID AND d.Location='Block A';

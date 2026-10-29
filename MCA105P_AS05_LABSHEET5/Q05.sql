/* Full Question: Equi Join Perform an Equi Join between Employees and Departments using DeptID = DeptID. */

SELECT e.EmpName,d.DeptName FROM Employees e JOIN Departments d ON e.DeptID=d.DeptID;

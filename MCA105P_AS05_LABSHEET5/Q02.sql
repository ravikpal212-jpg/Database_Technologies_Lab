/* Full Question: Employee and Department IDs Use INNER JOIN to display EmpID, EmpName, DeptID, and DeptName. */

SELECT e.EmpID,e.EmpName,e.DeptID,d.DeptName FROM Employees e INNER JOIN Departments d ON e.DeptID=d.DeptID;

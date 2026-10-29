/* Full Question: DISTINCT Departments Display dis nct department names that have at least one matching employee. */

SELECT e.EmpName,d.DeptName,e.Salary FROM Employees e JOIN Departments d ON e.DeptID=d.DeptID ORDER BY e.Salary DESC;

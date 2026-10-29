/* Full Question: IN Condi on Display employees working in either Computer Science or Pharmacy. */

SELECT e.EmpName,d.DeptName,e.Salary FROM Employees e JOIN Departments d ON e.DeptID=d.DeptID ORDER BY e.Salary DESC LIMIT 1;

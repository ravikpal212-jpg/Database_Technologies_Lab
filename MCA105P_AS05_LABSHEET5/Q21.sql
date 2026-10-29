/* Full Question: Matched Rows Observa on Use INNER JOIN to display all matched employees. Observe which employee is excluded because no department has DeptID 50. */

SELECT e.* FROM Employees e JOIN Departments d ON e.DeptID=d.DeptID WHERE d.DeptName IN ('Computer Science','Pharmacy');

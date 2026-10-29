/* Full Question: Computer Science Find all employees belonging to Computer Science using an equality-based INNER JOIN. */

SELECT e.* FROM Employees e JOIN Departments d ON e.DeptID=d.DeptID WHERE d.DeptName='Computer Science';

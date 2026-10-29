/* Full Question: Final Challenge Use an equality-based INNER JOIN to ﬁnd departments whose total employee salary is greater than 100000. Display department name and total salary. */

SELECT e.* FROM Employees e INNER JOIN Departments d ON e.DeptID=d.DeptID; -- EmpID 106 (DeptID 50) is excluded.

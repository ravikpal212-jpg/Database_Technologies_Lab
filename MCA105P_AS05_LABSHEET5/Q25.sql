/* Full Question: Use an equality-based INNER JOIN to find departments whose total employee salary is greater than 100000. Display department name and total salary. */

SELECT d.DeptName,SUM(e.Salary) AS total_salary FROM Departments d JOIN Employees e ON e.DeptID=d.DeptID GROUP BY d.DeptID,d.DeptName HAVING SUM(e.Salary)>100000;

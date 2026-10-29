/* Full Question: Salary Filter Display matched employees whose salary is greater than 60000. */

SELECT e.*,d.DeptName FROM Employees e JOIN Departments d ON e.DeptID=d.DeptID WHERE e.Salary>50000;

/* Full Question: Natural Join with Salary Using NATURAL JOIN, display employee name, department name, and salary for salaries >= 70000. */

SELECT EmpName,DeptName,Salary FROM Employees NATURAL JOIN Departments WHERE Salary>50000;

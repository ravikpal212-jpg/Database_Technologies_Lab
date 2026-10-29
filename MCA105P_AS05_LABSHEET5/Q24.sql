/* Full Question: Using NATURAL JOIN, count employees in each department. */

SELECT DeptName,COUNT(*) AS employee_count FROM Employees NATURAL JOIN Departments GROUP BY DeptName;

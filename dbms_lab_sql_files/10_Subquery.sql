-- Experiment 10: Subquery & Correlated Query
SELECT EmpName FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);
SELECT EmpName, Salary
FROM Employee e
WHERE Salary > (SELECT AVG(Salary) FROM Employee WHERE DeptID = e.DeptID);

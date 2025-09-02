-- Experiment 8: SELECT - BETWEEN, IN, Aggregate
SELECT * FROM Employee WHERE Salary BETWEEN 20000 AND 40000;
SELECT * FROM Employee WHERE DeptID IN (1, 2);
SELECT AVG(Salary), MAX(Salary), COUNT(*) FROM Employee;

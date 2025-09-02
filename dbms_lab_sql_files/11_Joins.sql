-- Experiment 11: Joins
SELECT EmpName, DeptName
FROM Employee e, Department d
WHERE e.DeptID = d.DeptID;
SELECT EmpName, DeptName
FROM Employee e
INNER JOIN Department d ON e.DeptID = d.DeptID;
SELECT EmpName, DeptName
FROM Employee e
LEFT JOIN Department d ON e.DeptID = d.DeptID;

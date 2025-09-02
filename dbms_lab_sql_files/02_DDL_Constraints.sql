-- Experiment 2: DDL with Constraints
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) UNIQUE NOT NULL
);
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) CHECK (Salary > 0),
    DeptID INT,
    CONSTRAINT fk_dept FOREIGN KEY (DeptID) REFERENCES Department(DeptID),
    DOJ DATE DEFAULT (CURRENT_DATE)
);

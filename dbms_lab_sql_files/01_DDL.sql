-- Experiment 1: DDL Commands
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
ALTER TABLE Student ADD Email VARCHAR(100);
TRUNCATE TABLE Student;
DROP TABLE Student;

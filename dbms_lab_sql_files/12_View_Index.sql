-- Experiment 12: View and Index
CREATE VIEW EmpView AS
SELECT EmpName, Salary FROM Employee;
CREATE INDEX idx_salary ON Employee(Salary);

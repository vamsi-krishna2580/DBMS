-- Experiment 16: Procedure
DELIMITER //
CREATE PROCEDURE GetEmployee(IN id INT)
BEGIN
    SELECT * FROM Employee WHERE EmpID = id;
END //
DELIMITER ;

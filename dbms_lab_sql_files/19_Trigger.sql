-- Experiment 19: Trigger
DELIMITER //
CREATE TRIGGER before_insert_emp
BEFORE INSERT ON Employee
FOR EACH ROW
BEGIN
    IF NEW.Salary < 10000 THEN
        SET NEW.Salary = 10000;
    END IF;
END //
DELIMITER ;

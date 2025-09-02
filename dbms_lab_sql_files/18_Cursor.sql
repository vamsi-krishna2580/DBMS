-- Experiment 18: Cursor
DELIMITER //
CREATE PROCEDURE CursorDemo()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE eName VARCHAR(50);
    DECLARE cur CURSOR FOR SELECT EmpName FROM Employee;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO eName;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;
        SELECT eName;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

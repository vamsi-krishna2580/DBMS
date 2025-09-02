-- Experiment 14: REPEAT and WHILE
DELIMITER //
CREATE PROCEDURE RepeatDemo()
BEGIN
    DECLARE x INT DEFAULT 1;
    REPEAT
        INSERT INTO Orders(ProductName) VALUES ('Item');
        SET x = x + 1;
    UNTIL x > 5 END REPEAT;
END //
DELIMITER ;

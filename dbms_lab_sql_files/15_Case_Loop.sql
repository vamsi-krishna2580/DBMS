-- Experiment 15: CASE and LOOP
DELIMITER //
CREATE PROCEDURE CaseLoopDemo()
BEGIN
    DECLARE i INT DEFAULT 1;
    loop_label: LOOP
        CASE
            WHEN i = 3 THEN LEAVE loop_label;
            ELSE INSERT INTO Orders(ProductName) VALUES (CONCAT('Prod', i));
        END CASE;
        SET i = i + 1;
    END LOOP;
END //
DELIMITER ;

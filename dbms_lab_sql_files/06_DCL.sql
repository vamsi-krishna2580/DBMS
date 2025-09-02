-- Experiment 6: DCL - GRANT, REVOKE
GRANT SELECT, INSERT ON Employee TO 'user1'@'localhost';
REVOKE INSERT ON Employee FROM 'user1'@'localhost';

DELIMITER //

CREATE PROCEDURE great_num(a INT, b INT, c INT)
BEGIN
    IF a > b AND a > c THEN 
        SELECT a AS 'greatest';
    ELSEIF b > a AND b > c THEN
        SELECT b AS 'greatest';
    ELSE
        SELECT c AS 'greatest';
    END IF;
END //

DELIMITER ;

-- Calling the stored procedure
CALL great_num(4, 5, 6);

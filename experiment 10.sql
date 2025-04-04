DELIMITER //
CREATE FUNCTION price_range(price INT)
RETURNS VARCHAR(6)
DETERMINISTIC
BEGIN
    IF price <= 10 THEN
        RETURN 'low';
    ELSEIF price <= 60 THEN
        RETURN 'medium';
    ELSE
        RETURN 'high';
    END IF;
END //
DELIMITER ;
SELECT p_id, pname, price, price_range(price) AS price_category
FROM product;

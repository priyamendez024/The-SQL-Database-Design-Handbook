DELIMITER //

CREATE PROCEDURE GetCustomerCount(OUT count INT)
BEGIN
    SELECT COUNT(*) INTO count FROM Customers;
END //

DELIMITER ;

CALL GetCustomerCount(@total);
SELECT @total;

-- Example function in PostgreSQL
CREATE OR REPLACE FUNCTION CalculateDiscount(price NUMERIC, discount_percent NUMERIC)
RETURNS NUMERIC AS $$
BEGIN
    RETURN price - (price * discount_percent / 100);
END;
$$ LANGUAGE plpgsql;
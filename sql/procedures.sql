USE CarDealershipDB;

DROP PROCEDURE IF EXISTS AddCustomer;
DROP PROCEDURE IF EXISTS MonthlySalesReport;

DELIMITER //

CREATE PROCEDURE AddCustomer(
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_phone VARCHAR(20),
    IN p_email VARCHAR(100),
    IN p_address VARCHAR(150)
)
BEGIN
    INSERT INTO Customers(first_name, last_name, phone, email, address)
    VALUES (p_first_name, p_last_name, p_phone, p_email, p_address);
END //

CREATE PROCEDURE MonthlySalesReport(
    IN p_month INT,
    IN p_year INT
)
BEGIN
    SELECT
        COUNT(*) AS total_sales,
        SUM(sale_price) AS total_revenue,
        AVG(sale_price) AS average_sale
    FROM Sales
    WHERE MONTH(sale_date) = p_month
      AND YEAR(sale_date) = p_year;
END //

DELIMITER ;
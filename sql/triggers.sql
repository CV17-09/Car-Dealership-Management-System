USE CarDealershipDB;

DROP TRIGGER IF EXISTS AfterSaleInsert;

DELIMITER //

CREATE TRIGGER AfterSaleInsert
AFTER INSERT ON Sales
FOR EACH ROW
BEGIN
    UPDATE Vehicles
    SET status = 'Sold'
    WHERE vehicle_id = NEW.vehicle_id;
END //

DELIMITER ;
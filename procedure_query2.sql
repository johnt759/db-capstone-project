DELIMITER //
CREATE PROCEDURE CancelOrder(id INT)
	BEGIN
    DECLARE Confirmation VARCHAR(100);
	DELETE FROM Orders WHERE OrderID = id;
    SET Confirmation = CONCAT("Order ", id, " is cancelled");
    SELECT Confirmation;
END //
DELIMITER ;

CALL CancelOrder(5);
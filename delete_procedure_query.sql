DELIMITER //
CREATE PROCEDURE CancelBooking(booking_id INT)
	BEGIN
    DECLARE Confirmation VARCHAR(100);
    DELETE FROM Bookings WHERE BookingID = booking_id;
    SET Confirmation = CONCAT("Booking ", booking_id, " cancelled");
    SELECT Confirmation;
END //
DELIMITER ;

CALL CancelBooking(9);
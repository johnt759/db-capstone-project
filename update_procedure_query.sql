DELIMITER //
CREATE PROCEDURE UpdateBooking(booking_id INT, booking_date DATE)
	BEGIN
    DECLARE Confirmation VARCHAR(100);
    UPDATE Bookings SET BookingDate = booking_date WHERE BookingID = booking_id;
    SET Confirmation = CONCAT("Booking ", booking_id, " updated");
    SELECT Confirmation;
END //
DELIMITER ;

CALL UpdateBooking(9, "2022-12-17");
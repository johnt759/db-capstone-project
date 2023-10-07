DELIMITER //
CREATE PROCEDURE CheckBooking(booking_date DATE, table_num INT)
	BEGIN
    DECLARE Booking_Status VARCHAR(100);
    SET @num_rows := 0;
	SELECT @num_rows:=COUNT(*) FROM Bookings WHERE TableNumber = table_num AND BookingDate = booking_date;
    IF @num_rows > 0 THEN
		SET Booking_Status = CONCAT("Table ", table_num, " is already booked.");
	ELSE
		SET Booking_Status = CONCAT("Table ", table_num, " is not yet booked.");
	END IF;
    SELECT Booking_Status;
END //
DELIMITER ;

CALL CheckBooking("2022-11-12", 3);
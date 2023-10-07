DELIMITER //
CREATE PROCEDURE AddValidBooking(booking_date DATE, table_num INT)
	BEGIN
    DECLARE Booking_Status VARCHAR(150);
    SET @new_date := booking_date;
    SET @new_table_num := table_num;
    SET @num_rows := 0;
    START TRANSACTION;
    SELECT @num_rows:=COUNT(*) FROM Bookings WHERE TableNumber = @new_table_num;
    IF @num_rows > 0 THEN
		SET Booking_Status = CONCAT("Table ", table_num, " is already booked - booking cancelled.");
        SELECT Booking_Status;
        ROLLBACK;
	ELSE
		INSERT INTO Bookings (TableNumber, BookingDate) VALUES (@new_table_num, @new_date);
		SET Booking_Status = CONCAT("Table ", table_num, " has been added into the booking list.");
		SELECT Booking_Status;
        COMMIT;
    END IF;
END //
DELIMITER ;

CALL AddValidBooking("2022-12-17", 6);

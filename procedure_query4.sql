DELIMITER //
CREATE PROCEDURE AddValidBooking(booking_date DATE, table_num INT, cust_id INT)
	BEGIN
    DECLARE Booking_Status VARCHAR(150);
    SET @new_date := booking_date;
    SET @new_table_num := table_num;
    SET @new_cust_id := cust_id;
    SET @num_rows := 0;
    START TRANSACTION;
    SELECT @num_rows:=COUNT(*) AS number_of_rows FROM Bookings WHERE TableNumber = @new_table_num AND BookingDate = @new_date;
    IF @num_rows > 0 THEN
		SET Booking_Status = CONCAT("Table ", table_num, " is already booked - booking cancelled.");
        SELECT Booking_Status;
        ROLLBACK;
	ELSE
		INSERT INTO Bookings (CustomerID, TableNumber, BookingDate) VALUES (@new_cust_id, @new_table_num, @new_date);
		SET Booking_Status = CONCAT("Table ", table_num, " has been added into the booking list.");
		SELECT Booking_Status;
        COMMIT;
    END IF;
END //
DELIMITER ;

CALL AddValidBooking("2022-12-17", 6, 7);

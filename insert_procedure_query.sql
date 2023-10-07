DELIMITER //
CREATE PROCEDURE AddBooking(booking_id INT, customer_id INT, table_no INT, booking_date DATE)
	BEGIN
    DECLARE Confirmation VARCHAR(100);
    INSERT INTO Bookings (BookingID, CustomerID, TableNumber, BookingDate) VALUES (booking_id, customer_id, table_no, booking_date);
    SET Confirmation = CONCAT("New booking added");
    SELECT Confirmation;
END //
DELIMITER ;

CALL AddBooking(9, 3, 4, "2022-12-30");
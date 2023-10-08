INSERT INTO Deliveries (StatusID, DeliveryDate, DeliveryStatus) VALUES
(1, "2019-06-01", "Delivered"),
(2, "2019-09-01", "Delivered"),
(3, "2020-05-01", "Pending"),
(4, "2021-04-01", "Pending"),
(5, "2021-06-01", "Delivered"),
(6, "2022-09-01", "Pending");

INSERT INTO Staff (EmployeeID, EmployeeName, EmployeeRole, EmployeeSalary) VALUES
(1, "Mario Gollini", "Manager", 70000),
(2, "Adrian Gollini", "Assistant Manager", 65000),
(3, "Giorgios Dioudis", "Head Chef", 50000),
(4, "Fatma Kaya", "Assistant Chef", 45000),
(5, "Elena Salvai", "Head Waiter", 40000),
(6, "John Millar", "Receptionist", 35000),
(7, "Isabel Nisi", "Assistant Waiter", 30000),
(8, "Joseph Ortega", "Assistant Chef", 32500);

INSERT INTO Customers (CustomerID, CustomerName, PhoneNumber, EmailAddress) VALUES
(1, "Anna Iversen", "7190552422", "anna.iversen@inbox.com"),
(2, "Joakim Iversen", "5809110094", "joakim.iversen@inbox.com"),
(3, "Vanessa McCarthy", "2628989067", "vanessamccarthy@inbox.com"),
(4, "Marcos Romero", "8302904223", "marcosr@inbox.com"),
(5, "Hiroki Yamane", "2698762250", "yamanehiroki@inbox.com"),
(6, "Diana Pinto", "8178965899", "dianap@inbox.com"),
(7, "Hugo Berntsen", "9036217094", "hugob@inbox.com"),
(8, "Lucia Sepp", "4076926489", "lucia.sepp@inbox.com"),
(9, "Julien Bauers", "3216422685", "julienb@inbox.com"),
(10, "Linda Atkins", "9365687473", "lindaatkins@inbox.com"),
(11, "Edith Upton", "7251114382", "edith.upton@inbox.com"),
(12, "Daniel Thomassen", "2014740093", "daniel.t@inbox.com");

INSERT INTO Menu (MenuID, ItemName, CuisineType, ItemType, Price) VALUES
(1, "Olives", "Greek", "Starters", 5),
(2, "Flatbread", "Italian", "Starters", 5),
(3, "Minestrone", "Italian", "Starters", 8),
(4, "Tomato bread", "Italian", "Starters", 8),
(5, "Falafel", "Turkish", "Starters", 7),
(6, "Hummus", "Greek", "Starters", 5),
(7, "Greek salad", "Greek", "Main Courses", 15),
(8, "Bean soup", "Italian", "Main Courses", 12),
(9, "Pizza", "Italian", "Main Courses", 15),
(10, "Greek yoghurt", "Greek", "Desserts", 7),
(11, "Ice cream", "Turkish", "Desserts", 6),
(12, "Cheesecake", "Italian", "Desserts", 4),
(13, "Kabasa", "Turkish", "Main Courses", 17),
(14, "Gelato", "Italian", "Desserts", 5),
(15, "Cacik", "Turkish", "Starters", 4),
(16, "Shish kebab", "Turkish", "Main Courses", 18),
(17, "Baklava", "Turkish", "Desserts", 8),
(18, "Tiramisu", "Italian", "Desserts", 7),
(19, "Cannoli", "Italian", "Desserts", 5),
(20, "Greek burger", "Greek", "Main Courses", 16),
(21, "Bruschetta", "Italian", "Starters", 6),
(22, "Shakshuka", "Turkish", "Main Courses", 17),
(23, "Spaghetti", "Italian", "Main Courses", 15),
(24, "Lasagna", "Italian", "Main Courses", 16);

INSERT INTO Orders (OrderID, Quantity, TotalCost, OrderDate, MenuID, CustomerID, StatusID) VALUES
(1, 1, 178, "2019-06-01", 12, 1, 1),
(2, 6, 138, "2019-06-01", 1, 2, 1),
(3, 5, 153, "2019-09-01", 7, 3, 2),
(4, 3, 176, "2020-03-01", 24, 4, 2),
(5, 5, 171, "2020-05-01", 6, 5, 3),
(6, 1, 194, "2020-07-01", 20, 6, NULL),
(7, 4, 193, "2021-02-01", 11, 7, NULL),
(8, 6, 108, "2021-04-01", 18, 8, 4),
(9, 4, 128, "2021-06-01", 3, 9, 5),
(10, 2, 173, "2022-07-01", 5, 10, NULL),
(11, 5, 109, "2022-07-01", 10, 11, 6),
(12, 2, 193, "2022-11-01", 6, 12, NULL);

INSERT INTO Bookings (BookingID, CustomerID, TableNumber, BookingDate, EmployeeID) VALUES
(5, 5, 4, "2019-06-01", 2),
(6, 6, 1, "2020-09-01", 5),
(7, 7, 5, "2021-03-01", 7),
(8, 8, 6, "2021-05-01", 8);


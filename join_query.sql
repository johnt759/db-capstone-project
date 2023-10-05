SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.TotalCost, Menu.ItemName
FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Menu ON Orders.MenuID = Menu.MenuID
WHERE Orders.TotalCost > 150 ORDER BY Orders.TotalCost;
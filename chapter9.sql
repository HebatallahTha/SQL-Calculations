Use Cis111_GuitarShop
--Hebatallah Tharhan CIS 111 03 Chapter 9 assignment upload
--Query 1
Select ListPrice, DiscountPercent, ROUND(ListPrice * (DiscountPercent/100),2) as DiscountAmount
From Products
--query 2 
Select OrderDate, year( OrderDate) as [Year from OrderDate], day(OrderDate) as [Day from OrderDate],
Dateadd(day,30,OrderDate) as [Adding 30 days to OrderDate]
From Orders
--query 3
Select CardNumber, LEN(CardNumber) as [Length of CardNumber], RIGHT(CardNumber,4) as[Last Four Digits] ,
    'XXXX-XXXX-XXXX-' + RIGHT(CardNumber, 4) AS [X CardNumber]
From Orders
--query 4
Select OrderID, OrderDate, Dateadd(day,2,OrderDate) as ApproxShipDate, ShipDate, datediff(day,OrderDate, ShipDate) as DaysToShip
From Orders
Where Month(OrderDate) = 1 and Year(OrderDate) = 2020




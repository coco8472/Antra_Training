-- 1. 
SELECT c.[Name] Country, s.[Name] Province
FROM Person.CountryRegion c JOIN Person.StateProvince s ON c.CountryRegionCode=s.CountryRegionCode
ORDER BY  Country


-- 2. 
SELECT c.[Name] Country, s.[Name] Province
FROM Person.CountryRegion c JOIN Person.StateProvince s ON c.CountryRegionCode=s.CountryRegionCode
WHERE c.[Name] in ('Germany', 'Canada')
ORDER BY  Country


-- 3.
SELECT DISTINCT p.ProductID, p.ProductName
FROM dbo.Orders o JOIN dbo.[Order Details] od
ON o.OrderID = od.OrderID JOIN dbo.Products p
ON p.ProductID = od.ProductID
WHERE o.OrderDate>'1997-06-22'


-- 4.
SELECT TOP 5 ShipPostalCode PostCode, count(ShipPostalCode) Freq
FROM dbo.Orders
GROUP BY ShipPostalCode
ORDER BY Freq DESC


-- 5.
SELECT City CityName, Count(City) NumCustomers
FROM dbo.Customers
GROUP BY City
ORDER BY NumCustomers DESC


-- 6.
SELECT City CityName, Count(City) NumCustomers
FROM dbo.Customers
GROUP BY City
HAVING Count(City) >= 2
ORDER BY NumCustomers DESC


-- 7.
SELECT c.ContactName CustomerName, Count(od.Quantity) NumOfOrders
FROM dbo.Orders o JOIN dbo.[Order Details] od ON od.OrderID=o.OrderID
JOIN dbo.Customers c ON c.CustomerID=o.CustomerID
GROUP BY c.ContactName
ORDER BY NumOfOrders DESC


-- 8.
WITH SumOrders
AS
(
SELECT c.ContactName CustomerName, Count(od.Quantity) NumOfOrders
FROM dbo.Orders o JOIN dbo.[Order Details] od ON od.OrderID=o.OrderID
JOIN dbo.Customers c ON c.CustomerID=o.CustomerID
GROUP BY c.ContactName
)
SELECT CustomerName, NumOfOrders
FROM SumOrders
WHERE NumOfOrders >= 100
ORDER BY NumOfOrders DESC


-- 9.
SELECT *
FROM
(SELECT CompanyName as [Supplier Company Name]
FROM dbo.Suppliers) supp
JOIN
(SELECT CompanyName as [Shipping Company Name]
FROM dbo.Shippers) ship
ON 1=1


-- 10.
SELECT DISTINCT o.OrderDate [Order Date], p.ProductName [Product Name]
FROM dbo.Orders o JOIN dbo.[Order Details] od 
ON o.OrderID=od.OrderID
JOIN dbo.Products p ON p.ProductID=od.ProductID


-- 11.
SELECT e1.FirstName+' '+e1.LastName Person1, e2.FirstName+' '+e2.LastName Person2, e2.Title Title
FROM dbo.Employees e1 JOIN dbo.Employees e2
ON e1.Title=e2.Title and (e1.FirstName!=e2.FirstName and e1.LastName!=e2.LastName)


-- 12.
WITH freq
AS
(
SELECT ReportsTo, Count(ReportsTo) rt
FROM dbo.Employees
GROUP BY ReportsTo
)
SELECT e.FirstName + ' ' + e.LastName [Name], e.EmployeeID ID
FROM dbo.Employees e JOIN freq ON e.EmployeeID=freq.ReportsTo
WHERE freq.rt > 2


-- 13.
SELECT c.CompanyName [Name], c.ContactName [Contact Name], c.City City, 'Customer' [Type]
FROM Customers c
UNION
SELECT s.CompanyName [Name], s.ContactName [Contact Name], s.City City, 'Supplier' [Type]
FROM Suppliers s
ORDER BY City


-- 14.
SELECT DISTINCT c.City
FROM Customers c JOIN Suppliers s ON c.City = s.City


-- 15.
--a) Use sub-query
SELECT DISTINCT c.City
FROM Customers c 
WHERE c.City NOT IN
(
SELECT DISTINCT City
FROM Suppliers
)
--b) Do not use sub-query
SELECT DISTINCT c.City
FROM Customers c LEFT JOIN Suppliers s on c.City=s.City
WHERE s.City IS NULL


-- 16.
SELECT ProductID, ProductName, UnitsInStock+UnitsInStock Total
FROM Products
ORDER BY Total DESC


-- 17.
--a) 
SELECT DISTINCT c1.City
FROM Customers c1 JOIN Customers c2 ON c1.City=c2.City AND c1.CustomerID!=c2.CustomerID

--b)
SELECT City
FROM 
(
SELECT City, Count(City) freq
FROM Customers
GROUP BY City
) q
WHERE freq >= 2


-- 18.
WITH cit
AS 
(
SELECT Count(od.ProductID) fre, c.City
FROM [Order Details] od JOIN Orders o ON o.OrderID=od.OrderID
JOIN Customers c on c.CustomerID=o.CustomerID
GROUP BY c.City
)
SELECT City FROM cit
WHERE fre >=2


-- 19.
WITH Popular
AS
(
SELECT TOP 5 od.ProductID, sum(od.Quantity) total
FROM [Order Details] od JOIN Orders o 
ON od.OrderID=o.OrderID
GROUP BY od.ProductID
ORDER BY total DESC
)
SELECT pd.ProductName  [Name], pd.UnitPrice Price, p.total Amount
FROM Popular p JOIN Products pd
ON p.ProductID=pd.ProductID


-- 20.
WITH MostOrder
AS
(
SELECT top 1 ShipCity, COUNT(ShipCity) freq
FROM Orders
GROUP BY ShipCity
ORDER BY freq DESC
)
SELECT MostQuan.City
FROM MostOrder
JOIN
(
SELECT top 1 sum(od.Quantity) quant, o.ShipCity City
FROM [Order Details] od JOIN Orders o
ON od.OrderID=o.OrderID
GROUP BY o.ShipCity
ORDER BY quant DESC
) MostQuan
ON MostOrder.ShipCity = MostQuan.City


-- 21.
SELECT DISTINCT *
FROM Orders



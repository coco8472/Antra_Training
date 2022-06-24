* 1

CREATE VIEW view_product_order_peng
AS
SELECT p.ProductName [Name], od.Quantity
FROM Products p JOIN [Order Details] od
ON p.ProductID=od.ProductID


* 2

CREATE PROC sp_product_order_quantity_peng
@id int
AS
BEGIN
WITH q
AS
(
SELECT p.ProductName [Name], p.ProductID ID, od.Quantity
FROM Products p JOIN [Order Details] od
ON p.ProductID=od.ProductID
)
SELECT q.Quantity
FROM q WHERE q.ID=@id
END


* 3

CREATE PROC sp_product_order_city_peng
@n nvarchar(40)
AS
BEGIN
SELECT TOP 5 sum(od.Quantity) Num, o.ShipCity City
FROM [Order Details] od JOIN Orders o ON o.OrderID=od.OrderID
JOIN Products p ON p.ProductID=od.ProductID
WHERE p.ProductName=@n
GROUP BY o.ShipCity
ORDER BY Num DESC
END


* 4

CREATE TABLE city_peng
(ID int, City varchar(20))

CREATE TABLE people_peng
(ID int, [Name] varchar(20), City int)

INSERT INTO people_peng
VALUES
(1, 'Aaron Rodgers', 2),
(2, 'Russell Wilson', 1),
(3, 'Jody Nelson', 2)

INSERT INTO city_peng
VALUES
(1, 'Seattle'),
(2, 'Green Bay')

DELETE city_peng WHERE City='Seattle'

INSERT INTO city_peng
VALUES
(1, 'Madison')

CREATE VIEW Packers_Peng
AS
SELECT p.[Name]
FROM people_peng p JOIN city_peng c
ON p.City=c.City

DROP TABLE city_peng
DROP TABLE people_peng
DROP VIEW Packers_Peng


* 5

CREATE PROC sp_birthday_employees_peng
AS
BEGIN
CREATE TABLE birthday_employees_peng
(FullName varchar(40), Title varchar(60), Birthday date)
INSERT INTO birthday_employees_peng
SELECT FirstName+' '+LastName FullName, Title, BirthDate
FROM Employees WHERE month(BirthDate)=2
END

![q5img](https://github.com/coco8472/Antra_Training/blob/main/June23-q5.png)

* 6

I would try inner join and see the number of rows in the result table. If I got row(joined) = row(table1)+row(table2), I can conclude that these two tables don't have any row in common. If I got row(joined) = row(table1) = row(table2), then I know the two tables are the same. Othewise table1 and table2 will have some common rows.

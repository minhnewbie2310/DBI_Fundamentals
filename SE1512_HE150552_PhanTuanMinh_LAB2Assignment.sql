--1
Use Northwind
Select EmployeeId as EmployeeID, Employees.LastName+' '+Employees.FirstName as EmployeeName,HomePhone, FLOOR((CAST (GetDate() AS INTEGER) - CAST(BirthDate AS INTEGER)) / 365.25) AS Age from Employees

--2
Use Northwind
Select * from Employees where BirthDate < '01/01/1961'
--3
Use Northwind
Select * from Products where QuantityPerUnit like '%boxes%'
--4
Use Northwind
Select * from Products where UnitPrice >= 10 and UnitPrice <= 15
--5
Use Northwind
Select * from Orders where OrderDate Between '01/09/1996' and '30/09/1996'
--6
Use Northwind
Select ProductId, ProductName, Unitprice, UnitsInStock,Unitprice*UnitsInStock as TotalAccount from Products
--7
Use Northwind
Select * from Customers where City Like 'M%'
--8 
Use Northwind
Select Top 2 EmployeeID, Employees.LastName+' '+Employees.FirstName as EmployeeName, FLOOR((CAST (GetDate() AS INTEGER) - CAST(BirthDate AS INTEGER)) / 365.25) AS Age from Employees
--9
Use Northwind
Select distinct [Order Details].ProductID, ProductName, [Order Details].UnitPrice from [Order Details] Inner join Products on [Order Details].ProductID = Products.ProductID
Order by ProductID
--10
Use Northwind
Select * from Orders inner join Customers on Orders.CustomerID=Customers.CustomerID where OrderID is null; 
--11
Use Northwind
Select * from Orders inner join Customers on Orders.CustomerID=Customers.CustomerID where OrderDate < '01/07/1997' or OrderDate > '31/07/1997'
--12
Use Northwind
Select * from Orders inner join Customers on Orders.CustomerID=Customers.CustomerID where OrderDate Between '01/07/1997' and '15/07/1997'	
--13
Use Northwind
Select Products.ProductName,Categories.CategoryName,[Order Details].UnitPrice from (Products inner join Categories on Products.CategoryID = Categories.CategoryID) inner join [Order Details] on Products.ProductID=[Order Details].ProductID
--14
Use Northwind
SELECT City FROM Customers
UNION
SELECT City FROM Employees
ORDER BY City;
--15
Use Northwind
SELECT Country FROM Customers
UNION
SELECT Country FROM Employees
ORDER BY Country;
--16
Use Northwind
SELECT CustomerID as CodeID, CompanyName as [Name], Phone FROM Customers
UNION
SELECT EmployeeID as CodeID, Employees.LastName+' '+Employees.FirstName as [Name], HomePhone as Phone FROM Employees

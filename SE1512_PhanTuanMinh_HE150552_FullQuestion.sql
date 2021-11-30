--1
SELECT LOWER(LastName) + LOWER(FirstName)
AS fullname , TitleOfCourtesy  FROM dbo.Employees
--2
SELECT UPPER(LastName) + UPPER(FirstName) FROM dbo.Employees
--3
SELECT * FROM dbo.Employees WHERE Country = 'USA'
--4
SELECT * FROM dbo.Customers WHERE Country = 'UK'
--5
SELECT *FROM dbo.Customers WHERE Country = 'Mexico'
--6
SELECT * FROM dbo.Customers WHERE Country = 'Sweden'
--7
SELECT ProductID , ProductName , UnitPrice , UnitsInStock FROM dbo.Products WHERE UnitsInStock BETWEEN
5 AND 10
--8
SELECT ProductID,ProductName, UnitPrice , ReorderLevel , UnitsOnOrder FROM dbo.Products 
WHERE UnitsOnOrder BETWEEN 60 AND 100
--9
SELECT a.EmployeeID , a.LastName , a.FirstName ,Title ,YEAR(OrderDate) AS year ,COUNT(*) AS total
FROM dbo.Employees AS a
INNER JOIN dbo.Orders ON Orders.EmployeeID = a.EmployeeID WHERE YEAR(OrderDate) = 1996
GROUP BY YEAR(OrderDate),
         a.EmployeeID,
         a.LastName,
         a.FirstName,
         a.Title
--10
SELECT a.EmployeeID , a.LastName , a.FirstName ,a.City, a.Country,COUNT(*) AS total
FROM dbo.Employees AS a
INNER JOIN dbo.Orders ON Orders.EmployeeID = a.EmployeeID WHERE YEAR(OrderDate) = 1998
GROUP BY a.EmployeeID,
         a.LastName,
         a.FirstName,
         a.City,
         a.Country
--11
SELECT a.EmployeeID , a.LastName , a.FirstName , a.HireDate,COUNT(*) AS total
FROM dbo.Employees AS a
INNER JOIN dbo.Orders ON Orders.EmployeeID = a.EmployeeID WHERE YEAR(OrderDate) = 1998 AND DAY(OrderDate) 
<=31 AND MONTH(OrderDate) <= 7
GROUP BY a.EmployeeID,
         a.LastName,
         a.FirstName,
		 a.HireDate
--12
SELECT a.EmployeeID , a.LastName , a.FirstName , a.HireDate,a.HomePhone,COUNT(*) AS total
FROM dbo.Employees AS a
INNER JOIN dbo.Orders ON Orders.EmployeeID = a.EmployeeID WHERE YEAR(OrderDate) = 1997 AND DAY(OrderDate) 
<=31 AND MONTH(OrderDate) <= 6
GROUP BY a.EmployeeID,
         a.LastName,
         a.FirstName,
		 a.HireDate , a.HomePhone
--13
SELECT OrderID , DAY(OrderDate) AS OrderDay , MONTH(OrderDate) AS OrderMonth, YEAR(OrderDate) 
AS OrderYear , Freight , 
CASE 
	WHEN Freight > 100 THEN '10%'
    ELSE '5%'
END AS Tax,
CASE 
	WHEN Freight > 100 THEN Freight * 1.1
	ELSE Freight*1.05
END AS FreightWithTax
FROM dbo.Orders WHERE DAY(OrderDate) <= 5 AND MONTH(OrderDate) = 8 AND YEAR(OrderDate) = 1996
--14
SELECT LastName + FirstName AS FullName , TitleOfCourtesy,
CASE 
	WHEN TitleOfCourtesy = 'Mr.'THEN 'Male'
	ELSE 'Female'
END AS Sex
FROM dbo.Employees
--15
SELECT LastName + FirstName AS FullName , TitleOfCourtesy,
CASE 
	WHEN TitleOfCourtesy = 'Ms.'THEN 'F'
	ELSE 'M'
END AS Sex
FROM dbo.Employees 
--16
SELECT LastName + FirstName AS FullName , TitleOfCourtesy,
CASE 
	WHEN TitleOfCourtesy = 'Mr.'THEN 'Male'
	WHEN TitleOfCourtesy = 'Mrs.' OR TitleOfCourtesy = 'Ms.' THEN 'Female'
	ELSE 'Unknown'
END AS Sex
FROM dbo.Employees
--17
SELECT LastName + FirstName AS FullName , TitleOfCourtesy,
CASE 
	WHEN TitleOfCourtesy = 'Mr.'THEN '1'
	WHEN TitleOfCourtesy = 'Mrs.' OR TitleOfCourtesy = 'Ms.' THEN '0'
	ELSE '2'
END AS Sex
FROM dbo.Employees
--18
SELECT LastName + FirstName AS FullName , TitleOfCourtesy,
CASE 
	WHEN TitleOfCourtesy = 'Mr.'THEN '1'
	WHEN TitleOfCourtesy = 'Mrs.' OR TitleOfCourtesy = 'Ms.' THEN '0'
	ELSE 'N/A'
END AS Sex
FROM dbo.Employees
--21
SELECT CategoryID,CategoryName, ProductID, ProductName , DAY(OrderDate),MONTH(OrderDate),YEAR(OrderDate),
(a.QuantityPerUnit * a.UnitPrice) AS Revenue 
FROM dbo.Products AS a , dbo.[Order Details] , dbo.Orders INNER JOIN dbo.Categories ON Categories.CategoryID=a.CategoryID
SELECT *FROM dbo.Categories
SELECT *FROM dbo.Products
--22
SELECT *FROM dbo.Orders WHERE DATEDIFF(DAY  , RequiredDate, ShippedDate) >= 7
--23
SELECT CONCAT(CONCAT(LastName,' ' ,FirstName),CompanyName) AS [CompanyName] 
	,CONCAT(HomePhone,Phone) AS [Phone] FROM dbo.Employees
FULL OUTER JOIN dbo.Customers ON  Customers.Address = Employees.Address
WHERE CompanyName LIKE 'W%' 
--24
SELECT a.CustomerID , CompanyName , ContactName , ContactTitle FROM dbo.Customers AS a 
INNER JOIN dbo.Orders ON Orders.CustomerID = a.CustomerID  WHERE OrderID = 10643
--25
SELECT a.ProductID , a.ProductName , SUM(a.UnitsOnOrder) AS total FROM dbo.Products AS a
INNER JOIN dbo.[Order Details] ON [Order Details].ProductID = a.ProductID 
GROUP BY a.ProductID,
         a.ProductName
HAVING SUM(a.UnitsOnOrder) >= 1200
--26
SELECT a.ProductID , a.ProductName ,a.SupplierID , a.CategoryID,
SUM(a.UnitsOnOrder) AS total FROM dbo.Products AS a
INNER JOIN dbo.[Order Details] ON [Order Details].ProductID = a.ProductID 
GROUP BY a.ProductID,
         a.ProductName,
         a.SupplierID,
         a.CategoryID 
HAVING SUM(a.UnitsOnOrder) >= 1400
--27
SELECT TOP (1) a.CategoryID , a.CategoryName , COUNT(*) FROM dbo.Categories AS a
INNER JOIN dbo.Products ON Products.CategoryID = a.CategoryID
GROUP BY  a.CategoryID,
          a.CategoryName
ORDER BY COUNT(*) DESC
--28
SELECT TOP (2) a.CategoryID , a.CategoryName , COUNT(*) FROM dbo.Categories AS a
INNER JOIN dbo.Products ON Products.CategoryID = a.CategoryID
GROUP BY  a.CategoryID,
          a.CategoryName
ORDER BY COUNT(*) ASC
--29
SELECT COUNT(*) FROM  dbo.Employees
SELECT COUNT(*) FROM (SELECT COUNT(*) FROM dbo.Employees 
UNION 
SELECT COUNT(*) FROM dbo.Customers) AS total
--30
SELECT *FROM dbo.Products
SELECT *FROM dbo.Categories
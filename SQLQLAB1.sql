--1
Create database ProductDB
ON PRIMARY
(
	NAME = ProductDB_Data,
	FILENAME = 'E:\DBI202\ProductDB_dat.mdf',
	SIZE = 10 MB,
	MAXSIZE = 50 MB,
	FILEGROWTH = 2
)

LOG ON
(
	NAME = ProductDB_Log,
	FILENAME = 'E:\DBI202\ProductDB_log.ldf',
	SIZE = 5 MB,
	MAXSIZE = 25 MB,
	FILEGROWTH = 2
)
GO
--2
Create table Products
(
		ProductId char(5) not null,
		ProductName nvarchar(100) not null,
		Unit nvarchar(20),
		Price int,
		Quantity int,
		CreateDate Date,
)

Create table Categories
(
		CategoryId char(5) not null,
		CategoryName nvarchar(50) not null,
		[Description] ntext null,
)
--3
Alter Table Products Add Primary Key (ProductId);
Alter Table Categories Add Primary Key (CategoryId);
--4
Alter Table Products Add CategoryId char(5);
--5
ALTER TABLE Categories
ADD CONSTRAINT FK_Products
FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId);
--6
ALTER TABLE Products ADD CONSTRAINT DF_Products DEFAULT GETDATE() FOR CreateDate;
--7
ALTER TABLE Products DROP COLUMN Unit;
--8


--9
SELECT * FROM Products;
SELECT * FROM Categories;
--10
SELECT * FROM (
    SELECT 
        ProductId, ProductName, Price, Quantity
    FROM 
        Products 
        INNER JOIN Categories 
            ON Categories.CategoryId = Products.CategoryId
) t

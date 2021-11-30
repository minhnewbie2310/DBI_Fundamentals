-- 1
CREATE DATABASE ProductDB
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

USE ProductDB
--2
CREATE TABLE Products
(
	ProductId char(5) not null,
	ProductName nvarchar(100) not null,
	Unit nvarchar(20) not null,
	Price int not null,
	Quantity int not null,
	CreateDate Date not null
)

CREATE TABLE Categories
(
		CategoryId char(5) not null,
		CategoryName nvarchar(50) not null,
		[Description] ntext not null
)
--3
ALTER TABLE Products ADD PRIMARY KEY(ProductId);
ALTER TABLE Categories ADD PRIMARY KEY(CategoryId);
--4
ALTER TABLE Products ADD CategoryId char(5);
--5
ALTER TABLE Products ADD CONSTRAINT FK_CategoryId FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId);
--6
ALTER TABLE Products 
--7
ALTER TABLE Products DROP COLUMN Unit;
GO


--9
SELECT * FROM Products
SELECT * FROM Categories
--10


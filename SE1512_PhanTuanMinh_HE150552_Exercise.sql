CREATE DATABASE Exercise1DB
ON PRIMARY(
	NAME = Exercise1DB_DATA,
	FILENAME = 'D:\SEMETER 3\DBI202\Exercise1DB.mdf',
	SIZE = 10MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 2

)
LOG ON(
	NAME = Exercise1DB_LOG,
	FILENAME = 'D:\SEMETER 3\DBI202\Exercise1DB.ldf',
	SIZE = 5MB,
	MAXSIZE = 25MB,
	FILEGROWTH = 2

);

USE Exercise1DB;
CREATE TABLE Product (

	maker CHAR (25) not null,

	model CHAR (15) PRIMARY KEY,

	type CHAR (25) not null

);
CREATE TABLE PC (

	model CHAR (15) PRIMARY KEY,

	speed DECIMAL (4,2) not null,
	 
	ram INTEGER not null,

	hd INTEGER NOT NULL,

	price DECIMAL (7,2) NOT NULL

);
CREATE TABLE Laptop (

	model CHAR (15) PRIMARY KEY,

	speed DECIMAL (4,2) NOT NULL,

	ram INTEGER NOT NULL,

	hd INTEGER NOT NULL,

	screen DECIMAL (3,1) NOT NULL,

	price DECIMAL (7,2) NOT NULL

);
CREATE TABLE Printer (

	model CHAR (15) PRIMARY KEY,

	color BIT NOT NULL,

	type CHAR (10) NOT NULL,

	price DECIMAL (7,2) NOT NULL

);
ALTER TABLE Printer DROP column color;
INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'A',  -- maker - char(30)
    N'1001', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )
INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'A',  -- maker - char(30)
    N'1002', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )
	INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'A',  -- maker - char(30)
    N'1003', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'A',  -- maker - char(30)
    N'2004', -- model - nvarchar(50)
    'laptop'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'A',  -- maker - char(30)
    N'2005', -- model - nvarchar(50)
    'laptop'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'A',  -- maker - char(30)
    N'2006', -- model - nvarchar(50)
    'laptop'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'B',  -- maker - char(30)
    N'1004', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'B',  -- maker - char(30)
    N'1005', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'B',  -- maker - char(30)
    N'1006', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'B',  -- maker - char(30)
    N'2007', -- model - nvarchar(50)
    'laptop'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'C',  -- maker - char(30)
    N'1007', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'D',  -- maker - char(30)
    N'1008', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'D',  -- maker - char(30)
    N'1009', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'D',  -- maker - char(30)
    N'1010', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'D',  -- maker - char(30)
    N'3004', -- model - nvarchar(50)
    'printer'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'D',  -- maker - char(30)
    N'3005', -- model - nvarchar(50)
    'printer'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'E',  -- maker - char(30)
    N'1011', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'E',  -- maker - char(30)
    N'1012', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'E',  -- maker - char(30)
    N'1013', -- model - nvarchar(50)
    'pc'   -- type - char(20)
    )INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'E',  -- maker - char(30)
    N'2001', -- model - nvarchar(50)
    'laptop'   -- type - char(20)
    )
	INSERT INTO dbo.Product(
    maker,
    model,
    type
)
VALUES
(   'E',  -- maker - char(30)
    N'2002', -- model - nvarchar(50)
    'laptop'   -- type - char(20)
)
INSERT INTO dbo.PC
(
    model,
    speed,
    ram,
    hd,
    price
)
VALUES
(   '1001',   -- model - char(15)
    2.66, -- speed - decimal(4, 2)
    1024,    -- ram - int
    250,    -- hd - int
    2114  -- price - decimal(7, 2)
    )
INSERT INTO dbo.PC
(
    model,
    speed,
    ram,
    hd,
    price
)
VALUES
(   '1002',   -- model - char(15)
    2.10, -- speed - decimal(4, 2)
    512,    -- ram - int
    250,    -- hd - int
    995  -- price - decimal(7, 2)
    )
INSERT INTO dbo.PC
(
    model,
    speed,
    ram,
    hd,
    price
)
VALUES
(   '1003',   -- model - char(15)
    1.42, -- speed - decimal(4, 2)
    512,    -- ram - int
    80,    -- hd - int
    478  -- price - decimal(7, 2)
    )
INSERT INTO dbo.PC
(
    model,
    speed,
    ram,
    hd,
    price
)
VALUES
(   '1004',   -- model - char(15)
    2.8, -- speed - decimal(4, 2)
    1024,    -- ram - int
    250,    -- hd - int
    649  -- price - decimal(7, 2)
    )
	INSERT INTO dbo.PC
(
    model,
    speed,
    ram,
    hd,
    price
)
VALUES
(   '1005',   -- model - char(15)
    3.2, -- speed - decimal(4, 2)
    512,    -- ram - int
    250,    -- hd - int
    630  -- price - decimal(7, 2)
    )
INSERT INTO dbo.PC
(
    model,
    speed,
    ram,
    hd,
    price
)
VALUES
(   '1006',   -- model - char(15)
    3.2, -- speed - decimal(4, 2)
    1024,    -- ram - int
	320,    -- hd - int
    1049  -- price - decimal(7, 2)
    )
INSERT INTO dbo.Laptop
(
    model,
    speed,
    ram,
    hd,
    screen,
    price
    
)
VALUES
(   '2001',   -- model - char(15)
    2, -- speed - decimal(4, 2)
    2048,    -- ram - int
    240,    -- hd - int
    20.1, -- screen - decimal(3, 1)
    3673 -- price - decimal(7, 2)
   
    )
INSERT INTO dbo.Laptop
(
    model,
    speed,
    ram,
    hd,
    screen,
    price
    
)
VALUES
(   '2002',   -- model - char(15)
    1.73, -- speed - decimal(4, 2)
    1024,    -- ram - int
    80,    -- hd - int
    17, -- screen - decimal(3, 1)
    949 -- price - decimal(7, 2)
   
    )
	INSERT INTO dbo.Laptop
(
    model,
    speed,
    ram,
    hd,
    screen,
    price
    
)
VALUES
(   '2003',   -- model - char(15)
    1.8, -- speed - decimal(4, 2)
    512,    -- ram - int
    60,    -- hd - int
    15.4, -- screen - decimal(3, 1)
    549 -- price - decimal(7, 2)
   
    )
INSERT INTO dbo.Laptop
(
    model,
    speed,
    ram,
    hd,
    screen,
    price
    
)
VALUES
(   '2004',   -- model - char(15)
    2, -- speed - decimal(4, 2)
    512,    -- ram - int
	60,    -- hd - int
    13.3, -- screen - decimal(3, 1)
    1150 -- price - decimal(7, 2)
   
    )INSERT INTO dbo.Laptop
(
    model,
    speed,
    ram,
    hd,
    screen,
    price
    
)
VALUES
(   '2005',   -- model - char(15)
    2.16, -- speed - decimal(4, 2)
    1024,    -- ram - int
    120,    -- hd - int
    17, -- screen - decimal(3, 1)
    2500 -- price - decimal(7, 2)
   
    )
INSERT INTO dbo.Printer
(
    model,
    color,
    type,
    price
)
VALUES
(   '3001',   -- model - char(15)
	 1, -- color - bit
    'ink-jet',   -- type - char(10)
     99-- price - decimal(7, 2)
    )
	INSERT INTO dbo.Printer
(
    model,
    color,
    type,
    price
)
VALUES
(   '3002',   -- model - char(15)
     0, -- color - bit
    'laser',   -- type - char(10)
     239-- price - decimal(7, 2)
    )
	INSERT INTO dbo.Printer
(
    model,
    color,
    type,
    price
)
VALUES
(   '3003',   -- model - char(15)
     1, -- color - bit
    'laser',   -- type - char(10)
     899-- price - decimal(7, 2)
    )
	INSERT INTO dbo.Printer
(
    model,
    color,
    type,
    price
)
VALUES
(   '3004',   -- model - char(15)
     1, -- color - bit
    'ink-jet',   -- type - char(10)
     120-- price - decimal(7, 2)
    )
	INSERT INTO dbo.Printer
(
    model,
    color,
    type,
    price
)
VALUES
(   '3005',   -- model - char(15)
     0, -- color - bit
    'laser',   -- type - char(10)
     120-- price - decimal(7, 2)
    )
--1
Select [type],model From Product Where maker = 'A';
--2
Select * From PC Where speed >= 3.0;
--3
Select type From Product Where maker = 'A'
Union Select [type] From Product Where maker = 'D';
--4
Select type From Product Where maker = 'A'
EXCEPT Select [type] From Product Where maker = 'D';
--5
Select maker,model From Product Where model in (Select model From Laptop Where hd >= 100);
--6
 Select model,price From PC Where model in (Select model From Product Where maker = 'B') 
 Union (Select model,price From Laptop Where model in (Select model From Product Where maker = 'B') )
 Union (Select model,price From Printer Where model in (Select model From Product Where maker = 'B'))
--7
Select model From Printer Where type = 'laser' and color = 'true';
--8
Select maker From Product 
Where [type] = 'laptop' AND [type] NOT LIKE 'pc' GROUP BY maker;
--9
Select p1.hd From PC p1,PC p2 Where p1.model != p2.model and p1.hd=p2.hd

Select p1.hd From PC p1 Where (Select count(*) From PC p2 Where p1.hd=p2.hd)>1.

Select hd From PC GROUP BY  hd HAVING count(model)>=2.
--10
Select maker,models_speed.model
From Product, ((Select model, speed From pc) UNION (Select model, speed FROM laptop)) as models_speed
Where Product.model = models_speed.model 
and speed >= ALL((Select speed FROM pc) UNION (Select speed FROM laptop));
--11
Select maker
From product, ((Select model, speed FROM pc) Union (Select model, speed From laptop)) as models_speed
Where product.model = models_speed.model
  and models_speed.speed >= 2.80;

 

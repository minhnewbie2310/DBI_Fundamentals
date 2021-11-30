Create Database Exercise1DB
ON PRIMARY
(
	NAME = Exercise1DB_Data,
	FILENAME = 'E:\DBI202\Exercise1DB_dat.mdf',
	SIZE = 10 MB,
	MAXSIZE = 50 MB,
	FILEGROWTH = 2
)
LOG ON
(
	NAME = Exercise1DB_Log,
	FILENAME = 'E:\DBI202\Exercise1DB_log.ldf',
	SIZE = 5 MB,
	MAXSIZE = 25 MB,
	FILEGROWTH = 2
)
GO

USE Exercise1DB
	CREATE TABLE Product (
		maker CHAR (25) ,
		model CHAR (15) PRIMARY KEY,
		type CHAR (25) 
	);
	CREATE TABLE PC (
		model CHAR (15) PRIMARY KEY,
		speed FLOAT ,
		RAM INTEGER ,
		HD BIT ,
		price INTEGER 
	);
	CREATE TABLE Laptop (
		model CHAR (15) PRIMARY KEY,
		speed FLOAT ,
		RAM INTEGER ,
		HD BIT ,
		screen INTEGER ,
		price INTEGER 
	);
	CREATE TABLE Printer (
		model CHAR (15) PRIMARY KEY,
		color BIT ,
		type CHAR (25) ,
		price INTEGER 
	);
go
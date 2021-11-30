Create database DB
ON PRIMARY
(
	NAME = Exercise2DB_Data,
	FILENAME = 'E:\DBI202\Exercise2DB_dat.mdf',
	SIZE = 10 MB,
	MAXSIZE = 50 MB,
	FILEGROWTH = 2
)
LOG ON
(
	NAME = Exercise2DB_Log,
	FILENAME = 'E:\DBI202\Exercise2DB_log.ldf',
	SIZE = 5 MB,
	MAXSIZE = 25 MB,
	FILEGROWTH = 2
)
GO

Use DB
	CREATE TABLE Movies (
		title string,
		[year] integer,
		[length] integer,
		genre string,
		studioName string,
		producerC# integer,
		primary key (title, [year])
	); 
	CREATE TABLE MovieStar (
		[name] string primary key,
		[address] string,
		gender char,
		birthdate date
	);
	CREATE TABLE MovieExec (
		[name] string,
		[address] string,
		cert# integer primary key,
		netWorth integer
	)
	CREATE TABLE StarsIn (
		movieTitle string primary key,
		movieYear integer primary key,
		starName string primary key
	);
	CREATE TABLE Studio (
		[name] string primary key,
		[address] string,
		presC# integer
	);
go

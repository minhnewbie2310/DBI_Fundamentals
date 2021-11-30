Create database Lab1
Create table Genres
(
	Genre varchar(50) primary key,
	[Description] nvarchar(200) null
)
Create table Movies
(
	MovieNumber int not null primary key,
	[Title] nvarchar(200),
	[Year] int,
	Genre varchar(50) Foreign key references Genres(Genre)
)
Create table Persons
(
	PersonID int not null primary key,
	FullName nvarchar(200),
	Gender nvarchar(10)
)
Create table Rate
(
	[Time] DateTime,
	Comment text null,
	NumericRating float,
	MovieNumber int not null Foreign key references Movies(MovieNumber),
	PersonID int not null Foreign key references Persons(PersonID)
)
Insert into Genres values ('Sciene', null)
Insert into Genres values ('Anime', null)
Insert into Genres values ('Horror', null)
Insert into Movies values (1, 'Gozilla', '1998', 'Sciene')
Insert into Movies values (2, 'One Piece', '1988', 'Anime')
Insert into Movies values (3, 'The Conjuring', '2014', 'Horror')
Insert into Persons values (1, 'Minh', 'nam')
Insert into Persons values (2, 'Hang', 'nu')
Insert into Persons values (3, 'Mai', 'nu')
Insert into Rate values (CURRENT_TIMESTAMP, 'Hillarious !', 5.0, 1, 1) 
Insert into Rate values (CURRENT_TIMESTAMP, 'Meaningful !', 5.0, 2, 2) 
Insert into Rate values (CURRENT_TIMESTAMP, 'Scary !', 5.0, 3, 3) 

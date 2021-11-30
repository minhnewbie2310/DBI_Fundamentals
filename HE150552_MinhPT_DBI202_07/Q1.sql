
Create table Attend
(
	[Date] date ,
	Slot int ,
	Attend bit
	Primary key ([Date],Slot)
)
Create table Students
(
	StudentID int PRIMARY KEY,
	[Name] nvarchar(50),
	[Address] nvarchar(200),
	Gender char(1),
	[Date] date,
	Slot int,
	Foreign key ([Date],Slot) references Attend([Date],Slot)
)
Create table Teachers
(
	TeacherID int PRIMARY KEY,
	[Name] nvarchar(50),
	[Address] nvarchar(200),
	Gender char(1),
	[Date] date,
	Slot int,
	Foreign key ([Date],Slot) references Attend([Date],Slot)
)
Create table Classes
(
	ClassID int PRIMARY KEY,
	GroupID char(6), 
	CourseID char(6),
	NoCredits int,
	Semester char(10),
	[Year] int,
	TeacherID int,
	Foreign key (TeacherID) references Teachers(TeacherID)
)


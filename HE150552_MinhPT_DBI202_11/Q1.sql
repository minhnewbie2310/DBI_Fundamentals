Create table Customers
(
	CID varchar(20) not null ,
	[name] nvarchar(200),
	[address] nvarchar(100),
	primary key (CID)
)
Create table Loans
(
	loanNumber varchar(20) not null primary key,
	[Date] date,
	Amount float,
	CID varchar(20) not null, 
	Foreign key (CID) references Customers(CID)
)
Create table Payments
(	
	paymentNumber int not null primary key,
	[Date] date,
	Amount float,
	loanNumber varchar(20) not null, 
	Foreign key (loanNumber) references Loans(loanNumber)
)
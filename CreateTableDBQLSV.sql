Use QLSV;
Create table tblSV
(
	MaSV CHAR(8) PRIMARY KEY,
	TenSV nvarchar(50) not null,
	[GioiTinh] char(5),
	NgaySinh Datetime,
	Score decimal(2,1)
)
SET NOCOUNT ON
GO

USE master
GO

if exists (select * from sysdatabases where name='DBScript')
		drop database DBScript
go

CREATE TABLE Club (
  ClubName varchar(255),
  ClubID varchar(255)  not null primary key
)
GO
CREATE TABLE Position (
  PositionID varchar(255) not null primary key,
  PositionName varchar(255) default NULL
)
GO
CREATE TABLE Player (
  [Name] varchar(255),
  [PlayerID] varchar(255)  not null primary key,
  PositionID varchar(255)  Not null foreign key references Position(PositionID),
  ClubID varchar(255)  not null foreign key references Club(ClubID),
  [Email] nvarchar(255) default NULL,
  [Phone] varchar(255) default NULL
)
GO
CREATE TABLE Coach (
  [Name] varchar(255) default NULL,
  CoachID varchar(255) not null primary key,
  ClubID varchar(255) foreign key references Club(ClubID),
  Email nvarchar(255) default NULL,
  Phone varchar(255) default NULL unique
)
GO
create table [Round] (
	RoundID int not null primary key,
	Date date not null,
	Away varchar(255) not null,
	Home varchar(255) not null, 
	WinClub varchar(255) default null foreign key references Club(ClubID)
)
GO
create table Ranking (
    [rank] int IDENTITY(1,1) PRIMARY KEY,
	ClubID varchar(255) foreign key references Club(ClubID),
	Mark int
)
GO
CREATE TRIGGER tr_insertPlayer
ON Player
FOR INSERT 
AS
BEGIN
    SELECT i.PlayerID,i.PositionID,i.ClubID, i.Name, i.Email, i.Phone
    FROM inserted i INNER JOIN Player p
    on i.PlayerID = p.PlayerID
END
GO
CREATE TRIGGER tr_insertCoach
ON Coach
FOR INSERT 
AS
BEGIN
    SELECT i.CoachID,i.ClubID, i.Name, i.Email, i.Phone
    FROM inserted i INNER JOIN Coach p
    on i.CoachID = p.CoachID
END
GO
CREATE TRIGGER tr_insertWinTeam
ON Round
FOR INSERT 
AS
BEGIN
    SELECT i.WinClub
    FROM inserted i 
END
INSERT INTO Club (ClubName,ClubID) VALUES ('Adonis Esport','987');
INSERT INTO Club (ClubName,ClubID) VALUES ('Team Secret','630');
INSERT INTO Club (ClubName,ClubID) VALUES ('Divine Esport','905');
INSERT INTO Club (ClubName,ClubID) VALUES ('Viking Esport','289');
INSERT INTO Club (ClubName,ClubID) VALUES ('Cantho CR','904');
INSERT INTO Club (ClubName,ClubID) VALUES ('Cebereus Esport','768');
INSERT INTO Club (ClubName,ClubID) VALUES ('Phong Vu Buffalo','142');
INSERT INTO Club (ClubName,ClubID) VALUES ('Gigabyte Marines','231');
GO
INSERT INTO Position (PositionID,PositionName) VALUES ('JGL','Jungle'),('TOP','Top Lane'),('MID','Mid Lane'),('BOT','Bot Lane'),('SUP','Support');
GO
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Aline F. Simmons','JGL','987','Y2A 9L1','volutpat.Nulla@sit.edu','0-962-452-3635');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Maxine O. Bentley','JGL','630','S0E 8I6','bibendum.Donec.felis@etmagnaPraesent.ca','871-7554');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Fleur E. Pearson','JGL','905','L4D 0C0','ipsum.Suspendisse.non@Aliquamauctor.edu','0-676-146-7927');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Nina B. Shepard','JGL','289','Y5T 3P5','malesuada.fames@mollisPhaselluslibero.co.uk','859-7625');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Lacy W. Anderson','JGL','904','K0G 3P4','libero@lectus.ca','0-656-833-1508');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Ashely P. Nielsen','JGL','768','K8Y 3E1','Cras.convallis.convallis@maurisblandit.net','572-0723');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Velma Q. Best','JGL','142','I4W 1P0','eu.erat.semper@etnetus.edu','108-3831');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Shellie S. Waters','JGL','231','W4H 7P6','rutrum.eu.ultrices@vitaenibh.co.uk','363-3023');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Clinton Gaines','L5K 9O8','TOP','987','lacinia.vitae.sodales@primisin.net','0-528-547-6990');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Cyrus Fox','E2P 3C0','TOP','630','non.ante.bibendum@natoquepenatibus.edu','0-542-290-6859');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Christopher Sloan','TOP','905','U3M 0L9','Nunc.sed.orci@DonecestNunc.co.uk','0-667-496-4800');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Graham Mays','W8S 2N4','289','TOP','vulputate.ullamcorper.magna@varius.edu','0-369-865-3204');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Reed Sloan','G1U 4O0','TOP','904','consectetuer@varius.net','0-139-978-0906');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Yuli Mendez','J8I 4K8','TOP','768','non.vestibulum@malesuadafamesac.edu','0-721-457-1270');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Edan Allen','I3X 0Q6','TOP','142','metus.facilisis@loremipsum.edu','0-192-869-3123');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Quinn Dawson','D0Y 2P0','TOP','231','sapien.imperdiet@Nulla.org','0-634-698-5223');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Jelani Blanchard','P0Z 4O2','MID','987','arcu.Vestibulum@Nullatinciduntneque.ca','0-865-294-5662');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Chase Stevenson','C2Z 7Y1','MID','630','libero@facilisisfacilisis.net','0-749-973-5147');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Kennedy Valenzuela','W1L 8P0','905','MID','penatibus.et@tinciduntorciquis.com','0-404-867-8442');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Travis Gentry','G0G 2I4','MID','289','iaculis.odio.Nam@Nullatinciduntneque.com','0-735-463-6719');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Lance Riley','X6F 0P6','MID','904','Fusce.dolor@nec.edu','0-572-231-6922');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Justin Guy','Y2X 0L5','MID','768','Sed@interdumNunc.org','0-520-484-9837');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Merrill Britt','K9I 5J9','MID','142','a@ullamcorpervelit.net','0-800-425-8754');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Jerome White','J5U 9E7','MID','231','ligula@nec.com','0-547-126-2568');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Wyatt Roberts','G2I 5I1','BOT','987','penatibus.et@Sed.com','0-939-721-7079');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Daquan Vinson','W0E 0J4','BOT','630','natoque.penatibus.et@Integersem.net','0-885-287-6061');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Lester Kent','I4I 4J3','BOT','905','scelerisque.neque@necmollis.org','0-286-921-2408');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Harper Ashley','V7L 7F6','BOT','289','aliquet@nullaat.ca','0-346-377-6011');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Demetrius Herrera','N3G 8N7','904','BOT','consectetuer@dolorNullasemper.edu','0-735-805-8639');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Evan Blake','M4N 7J2','BOT','768','sagittis.felis.Donec@pedeSuspendisse.net','0-490-894-9067');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Raphael Morse','H7Y 9H0','BOT','142','felis.purus.ac@eros.co.uk','0-651-560-1450');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Duncan Castaneda','T7Y 0U4','BOT','231','lacus@pharetrafelis.net','0-920-471-9351');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Drew Mcmillan','V2O 9Q1','SUP','987','taciti.sociosqu.ad@aauctornon.co.uk','0-111-115-1833');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Louis Salas','B6G 9F0','SUP','630','ligula@magnisdisparturient.org','0-686-696-4661');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Colin Calderon','T5G 5W1','SUP','905','in@velit.net','0-487-117-8964');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Damon Michael','N0Y 5Q3','SUP','289','interdum@Quisquevarius.co.uk','0-412-425-9631');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Uriah Gill','R5I 3J4','SUP','904','elementum.sem.vitae@inhendreritconsectetuer.org','0-245-323-0125');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Holmes Price','L1G 6Z6','SUP','768','risus.odio@ornareegestasligula.edu','0-914-119-5638');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Matthew Oliver','N4H 7Z3','142','SUP','porttitor@dolorquamelementum.org','0-893-697-3683');
INSERT INTO Player ([Name],PlayerID,PositionID,ClubID,Email,Phone) VALUES ('Nigel Sandoval','F0Q 5H9','SUP','231','aliquet.libero.Integer@nuncsedlibero.net','0-964-366-1523');
GO
INSERT INTO Coach ([Name],CoachID,ClubID,Email,Phone) VALUES ('Preston O. Thornton','H4H 7P5','987','commodo@amet.co.uk','0-400-675-5818');
INSERT INTO Coach ([Name],CoachID,ClubID,Email,Phone) VALUES ('Jolie O. Mcbride','I9V 1N2','630','elit.dictum.eu@metusIn.co.uk','0-670-728-3120');
INSERT INTO Coach ([Name],CoachID,ClubID,Email,Phone) VALUES ('Abbot B. Valdez','Y2W 6N3','905','augue.ut.lacus@quis.co.uk','0-132-293-9038"');
INSERT INTO Coach ([Name],CoachID,ClubID,Email,Phone) VALUES ('Orlando E. Shepard','R1V 2P4','289','turpis.egestas.Fusce@massa.co.uk','321-4093');
INSERT INTO Coach ([Name],CoachID,ClubID,Email,Phone) VALUES ('Vivien Y. Spencer','V2C 8H0','904','nulla.Cras@at.net','0-855-118-4232"');
INSERT INTO Coach ([Name],CoachID,ClubID,Email,Phone) VALUES ('Eden H. Delgado','U2O 5Y1','768','Integer@egetmagnaSuspendisse.ca','0-792-162-0200');
INSERT INTO Coach ([Name],CoachID,ClubID,Email,Phone) VALUES ('Graiden G. Mullen','K0F 4W3','142','et@dictum.ca','0-442-107-7165');
INSERT INTO Coach ([Name],CoachID,ClubID,Email,Phone) VALUES ('Deborah L. Bean','G8L 0N2','231','quam.dignissim@cursus.com','117-7679');
GO
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (1,'1/11/2021','987','630')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (2,'1/11/2021','142','231')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (3,'1/11/2021','905','768')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (4,'1/11/2021','289','904')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (5,'2/11/2021','987','768')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (6,'2/11/2021','289','142')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (7,'2/11/2021','630','231')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (8,'2/11/2021','905','904')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (9,'3/11/2021','630','289')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (10,'3/11/2021','904','768')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (11,'3/11/2021','987','905')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (12,'3/11/2021','905','142')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (13,'4/11/2021','987','231')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (14,'4/11/2021','630','905')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (15,'4/11/2021','289','768')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (16,'4/11/2021','904','142')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (17,'5/11/2021','987','289')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (18,'5/11/2021','630','904')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (19,'5/11/2021','905','231')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (20,'5/11/2021','768','142')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (21,'8/11/2021','987','904')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (22,'8/11/2021','630','142')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (23,'8/11/2021','905','289')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (24,'8/11/2021','768','231')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (25,'9/11/2021','904','231')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (26,'9/11/2021','768','142')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (27,'9/11/2021','987','142')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (28,'9/11/2021','630','768')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (29,'10/11/2021','630','987')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (30,'10/11/2021','231','142')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (31,'10/11/2021','768','905')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (32,'10/11/2021','904','289')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (33,'11/11/2021','768','987')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (34,'11/11/2021','142','289')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (35,'11/11/2021','231','630')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (36,'11/11/2021','904','905')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (37,'12/11/2021','289','630')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (38,'12/11/2021','768','904')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (39,'12/11/2021','905','987')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (40,'12/11/2021','142','905')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (41,'15/11/2021','231','987')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (42,'15/11/2021','905','630')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (43,'15/11/2021','768','289')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (44,'15/11/2021','142','904')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (45,'16/11/2021','289','987')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (46,'16/11/2021','904','630')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (47,'16/11/2021','231','905')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (48,'16/11/2021','142','768')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (49,'17/11/2021','904','987')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (50,'17/11/2021','142','630')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (51,'17/11/2021','289','905')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (52,'17/11/2021','231','768')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (53,'18/11/2021','231','904')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (54,'18/11/2021','142','768')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (55,'18/11/2021','142','987')
INSERT INTO [Round] (RoundID,[Date],Home,Away) VALUES (56,'18/11/2021','768','630')
GO
INSERT INTO Ranking (ClubID) VALUES ('987');
INSERT INTO Ranking (ClubID) VALUES ('630');
INSERT INTO Ranking (ClubID) VALUES ('905');
INSERT INTO Ranking (ClubID) VALUES ('289');
INSERT INTO Ranking (ClubID) VALUES ('904');
INSERT INTO Ranking (ClubID) VALUES ('768');
INSERT INTO Ranking (ClubID) VALUES ('142');
INSERT INTO Ranking (ClubID) VALUES ('231');
GO

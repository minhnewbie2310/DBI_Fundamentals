use New 
Select [Name], PlayerID, Position.PositionID, Phone from Position inner join Player on Player.PositionID = Position.PositionID where Player.PositionID = 'SUP' And ClubID = 630
Select * from Coach right join (Player inner join Club on Player.ClubID = Club.ClubID) on Coach.ClubID = Club.ClubID 

Alter table Ranking
Set 
Create proc Win
@ClubID varchar(255), @WinClub output
as
begin
	select @WinClub = insert
	from Ranking

CREATE TRIGGER tr_insertPlayer
ON Player
FOR INSERT 
AS
BEGIN
    SELECT i.PlayerID,i.PositionID,i.ClubID, i.[Name], i.Email, i.Phone
    FROM inserted i INNER JOIN Player p
    on i.PlayerID = p.PlayerID
END

CREATE TRIGGER tr_insertWinTeam
ON Round
FOR INSERT 
AS
BEGIN
    SELECT i.WinClub
    FROM inserted i 
    
END

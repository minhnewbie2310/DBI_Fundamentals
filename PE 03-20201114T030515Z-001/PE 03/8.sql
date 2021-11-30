CREATE TRIGGER Upper_case
ON dbo.customer
AFTER INSERT
AS
BEGIN
	DECLARE @firstName VARCHAR(45), @lastName VARCHAR(45)
	SELECT @firstName = (SELECT Inserted.first_name FROM Inserted)
	SELECT @lastName = (SELECT Inserted.last_name FROM Inserted)
	UPDATE  dbo.customer SET first_name = UPPER(@firstName) WHERE customer_id = (SELECT Inserted.customer_id FROM Inserted)
	UPDATE dbo.customer SET last_name = UPPER(@lastName) WHERE customer_id = (SELECT Inserted.customer_id FROM Inserted)
END 

CREATE PROC ViewAddress
@cityName VARCHAR(50)
AS
BEGIN
	SELECT a.address_id, a.address, a.district, c.city_id 
	FROM dbo.city c, dbo.address a
	WHERE c.city_id=a.city_id AND c.city = @cityName
END

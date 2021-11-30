WITH t AS(
SELECT c.country_id, c.country, COUNT(ct.city_id) AS 'Number of countries'
FROM dbo.country c 
LEFT OUTER JOIN dbo.city ct
ON ct.country_id = c.country_id
GROUP BY c.country_id, c.country)
SELECT t.*
FROM t
WHERE t.[Number of countries]= (SELECT MAX(t.[Number of countries]) FROM t)


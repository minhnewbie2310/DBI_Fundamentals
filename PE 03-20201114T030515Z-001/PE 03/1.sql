SELECT c.city_id, c.city
FROM dbo.city c
WHERE c.country_id = '105'
ORDER BY city_id

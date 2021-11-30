SELECT c.city_id, c.city
FROM dbo.city c
WHERE c.city LIKE '__x%'
ORDER BY c.city_id
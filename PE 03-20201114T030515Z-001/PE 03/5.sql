SELECT c.customer_id, c.first_name, c.last_name, c.address_id, a.district
FROM dbo.customer c, dbo.address a
WHERE c.address_id = a.address_id AND a.district =  (
SELECT a.district
FROM dbo.customer c, dbo.address a
WHERE c.address_id = a.address_id AND c.first_name='KEVIN')
ORDER BY c.customer_id ASC

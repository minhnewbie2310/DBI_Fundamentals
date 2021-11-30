WITH t AS(
SELECT c.customer_id, c.first_name, c.last_name, COUNT(p.payment_id) AS 'Number of payments', SUM(p.amount) AS 'Total payment'
FROM dbo.customer c INNER JOIN dbo.payment p
ON c.customer_id = p.customer_id INNER JOIN rental r 
ON c.customer_id = r.customer_id AND p.rental_id = r.rental_id
GROUP BY c.customer_id, c.first_name, c.last_name)
SELECT *
FROM t
WHERE t.[Number of payments] >=40
ORDER BY t.customer_id ASC
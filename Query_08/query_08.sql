-- 8. Sub-query
-- Q: Which rentals have been paid $0

SELECT rental_id FROM rental
WHERE rental_id IN (
	SELECT rental_id
	FROM payment
	WHERE amount = 0
)



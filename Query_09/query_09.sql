-- 9. CTE’s
-- Q: Which customer(s) have longest film rental duration?

WITH max_rental_duration AS (
		SELECT c.customer_id, c.first_name, c.last_name, SUM(rental_duration) AS total_rental_duration
		FROM film f
		JOIN inventory i ON f.film_id = i.film_id
		JOIN rental r ON i.inventory_id = r.inventory_id
		JOIN customer c ON r.customer_id = c.customer_id
		GROUP BY c.customer_id
	)

SELECT customer_id, first_name, last_name, total_rental_duration
FROM max_rental_duration
WHERE total_rental_duration = (SELECT max(total_rental_duration) FROM max_rental_duration)
	

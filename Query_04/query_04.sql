-- 4. Inner join
-- Q: Which actor earn the most revenue with rental?

SELECT a.actor_id, a.first_name, a.last_name, SUM(amount) AS total_amount
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN film_actor fc ON f.film_id = fc.film_id
JOIN actor a ON fc.actor_id = a.actor_id
GROUP BY a.actor_id
ORDER BY total_amount DESC
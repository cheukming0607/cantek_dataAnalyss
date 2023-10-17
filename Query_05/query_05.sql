-- 5. Outer join
-- Q: Which films in inventory never been rented?

SELECT f.film_id, f.title 
FROM film f
JOIN inventory i ON f.film_id = i.film_id
FULL JOIN rental r ON i.inventory_id = r.inventory_id
WHERE rental_id is NULL

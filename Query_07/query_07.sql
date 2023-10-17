-- 7. Except
-- Q:  Return the films that without any actors on it

SELECT f.film_id, f.title
FROM film f
FULL JOIN film_actor fc ON f.film_id = fc.film_id
FULL JOIN actor a ON fc.actor_id = a.actor_id
EXCEPT
SELECT f.film_id, f.title
FROM film f
JOIN film_actor fc ON f.film_id = fc.film_id
JOIN actor a ON fc.actor_id = a.actor_id
-- 1. Comparison operator '>'

SELECT film_id, title, replacement_cost
FROM film
WHERE replacement_cost > 20
ORDER BY replacement_cost DESC
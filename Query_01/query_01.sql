-- 1. Comparison operator '>'
-- Q: Which films replacement cost larger than $20? 
-- 	Shows the table with the film ID, title, and replacement cost, 
-- 	descending order on the cost.


SELECT film_id, title, replacement_cost
FROM film
WHERE replacement_cost > 20
ORDER BY replacement_cost DESC
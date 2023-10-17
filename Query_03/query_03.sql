-- 3. Wildcard
-- Q. Q: Which city contain letter 'c' in their city name?

SELECT city_id, city
FROM city
WHERE city ILIKE '%c%'

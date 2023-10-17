-- 6. Group BY
-- Q: Count the rental number in each country 

SELECT co.country_id, co.country, COUNT(*) as rental_count
FROM rental r 
FULL JOIN customer c ON r.customer_id = c.customer_id
FULL JOIN address ad ON c.address_id = ad.address_id
FULL JOIN city ci ON ad.city_id = ci.city_id
FULL JOIN country co ON ci.country_id = co.country_id
GROUP BY co.country_id
ORDER BY rental_count DESC
-- 10. Unnest
-- Q: Count of the film according to the special features


SELECT unnest(special_features) AS special_features,COUNT(1) FROM film
GROUP BY unnest(special_features)


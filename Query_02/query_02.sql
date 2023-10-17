-- 2. Logical operator 
-- Q. Q: Which staff is currently work in the dvd store?

SELECT staff_id, first_name, last_name, active
FROM staff
WHERE active in (true)



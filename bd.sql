USE phone;
-- 1
SELECT city, cname, snum, cnum 
FROM customers;
-- 2
SELECT rating, cname
FROM customers
WHERE city = 'SanJose';
-- 3
SELECT DISTINCT snum
FROM orders;
-- 4
SELECT *
FROM customers
WHERE cname LIKE 'G%';
-- 5
SELECT  *
FROM orders
WHERE amt>1000;
-- 6
SELECT  MIN(amt)
FROM orders;
-- 7
SELECT *
FROM customers
WHERE rating >100 AND city <> 'Rome';

-- Часть 2
-- 1
SELECT *
FROM workers
ORDER BY salary DESC;
-- 
SELECT *
FROM workers
ORDER BY salary;
-- 2 
SELECT * 
FROM (SELECT * FROM workers ORDER BY salary DESC LIMIT 5) w
ORDER BY w.salary;
-- 3 
SELECT specialty, SUM(salary) as sums FROM workers
GROUP BY specialty
HAVING sums>100000;

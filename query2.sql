SELECT id, 
name,
(SELECT AGE(start_date))  as experience
FROM employees WHERE id<=3;
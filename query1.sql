SELECT id, 
name,
(SELECT AGE(start_date))  as experience
FROM employees;
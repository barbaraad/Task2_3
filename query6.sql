SELECT name FROM departments
WHERE count=(SELECT MAX(count) FROM departments);

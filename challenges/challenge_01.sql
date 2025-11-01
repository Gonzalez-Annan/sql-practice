-- Find the three highest-paid employees.
-- Return:
-- name
-- salary

SELECT
    name,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

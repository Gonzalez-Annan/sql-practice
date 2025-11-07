-- Find employees earning more than the overall average salary.

SELECT
    name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
ORDER BY salary DESC;

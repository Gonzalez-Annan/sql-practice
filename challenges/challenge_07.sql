-- Find the second-highest salary in the company.

SELECT DISTINCT
    salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

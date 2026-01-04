-- Find employees whose salary is in the top 25 percent
-- of all salaries.
-- Use NTILE().

SELECT
    name,
    salary
FROM (
    SELECT
        name,
        salary,
        NTILE(4) OVER (
            ORDER BY salary DESC
        ) AS salary_quartile
    FROM employees
)
WHERE salary_quartile = 1;

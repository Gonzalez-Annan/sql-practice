-- Find the year in which the most employees were hired.
-- Return:
-- hire_year
-- employees_hired

SELECT
    STRFTIME('%Y', hire_date) AS hire_year,
    COUNT(*) AS employees_hired
FROM employees
GROUP BY STRFTIME('%Y', hire_date)
ORDER BY employees_hired DESC
LIMIT 1;

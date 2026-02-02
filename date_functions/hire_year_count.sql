SELECT
    STRFTIME('%Y', hire_date) AS hire_year,
    COUNT(*) AS employees_hired
FROM employees
GROUP BY STRFTIME('%Y', hire_date)
ORDER BY hire_year;

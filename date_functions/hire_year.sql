SELECT
    name,
    hire_date,
    STRFTIME('%Y', hire_date) AS hire_year
FROM employees;

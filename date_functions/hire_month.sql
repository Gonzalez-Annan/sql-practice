SELECT
    name,
    hire_date,
    STRFTIME('%m', hire_date) AS hire_month
FROM employees;

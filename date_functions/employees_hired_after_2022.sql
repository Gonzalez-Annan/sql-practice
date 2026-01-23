SELECT
    name,
    hire_date
FROM employees
WHERE DATE(hire_date) > DATE('2022-12-31')
ORDER BY hire_date;

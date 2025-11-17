SELECT
    name,
    hire_date,
    CASE
        WHEN hire_date < '2022-01-01' THEN 'Senior'
        WHEN hire_date < '2024-01-01' THEN 'Experienced'
        ELSE 'Recent'
    END AS experience_category
FROM employees;

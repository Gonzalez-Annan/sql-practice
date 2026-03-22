SELECT
    name,
    COALESCE(department_id, 0) AS department_id
FROM employees;

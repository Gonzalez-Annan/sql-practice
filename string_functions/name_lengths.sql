SELECT
    name,
    LENGTH(name) AS name_length
FROM employees
ORDER BY name_length DESC;

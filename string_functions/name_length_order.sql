SELECT
    name,
    LENGTH(name) AS character_count
FROM employees
ORDER BY character_count DESC;

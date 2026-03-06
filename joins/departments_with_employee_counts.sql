SELECT
    d.name AS department,
    COUNT(e.id) AS employee_count
FROM departments AS d
LEFT JOIN employees AS e
    ON e.department_id = d.id
GROUP BY d.id, d.name
ORDER BY employee_count DESC;

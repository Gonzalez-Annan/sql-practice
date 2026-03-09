SELECT
    e.name AS employee,
    d.name AS department,
    e.salary
FROM employees AS e
JOIN departments AS d
    ON e.department_id = d.id
ORDER BY d.name, e.salary DESC;

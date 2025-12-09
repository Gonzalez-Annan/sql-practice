-- Find departments that have at least 2 employees.
-- Return:
-- department name
-- employee count

SELECT
    d.name AS department,
    COUNT(e.id) AS employee_count
FROM departments AS d
JOIN employees AS e
    ON e.department_id = d.id
GROUP BY d.id, d.name
HAVING COUNT(e.id) >= 2;

-- Find every department, including departments with no employees.
-- Show 0 as the employee count when necessary.

SELECT
    d.name AS department,
    COUNT(e.id) AS employee_count
FROM departments AS d
LEFT JOIN employees AS e
    ON e.department_id = d.id
GROUP BY d.id, d.name;

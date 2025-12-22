-- Find the department with the lowest average salary.

SELECT
    d.name AS department,
    AVG(e.salary) AS average_salary
FROM departments AS d
JOIN employees AS e
    ON e.department_id = d.id
GROUP BY d.id, d.name
ORDER BY average_salary ASC
LIMIT 1;

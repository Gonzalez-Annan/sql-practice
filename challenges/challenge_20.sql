-- Create a query that returns:
-- employee name
-- department name
-- salary
-- department average salary
-- difference from department average
-- salary rank within department

SELECT
    e.name AS employee,
    d.name AS department,
    e.salary,

    AVG(e.salary) OVER (
        PARTITION BY e.department_id
    ) AS department_average,

    e.salary - AVG(e.salary) OVER (
        PARTITION BY e.department_id
    ) AS difference_from_department_average,

    RANK() OVER (
        PARTITION BY e.department_id
        ORDER BY e.salary DESC
    ) AS salary_rank

FROM employees AS e
JOIN departments AS d
    ON e.department_id = d.id;

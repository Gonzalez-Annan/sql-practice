-- Find the highest-paid employee in each department.
-- Return:
-- department_id
-- name
-- salary

SELECT
    department_id,
    name,
    salary
FROM (
    SELECT
        department_id,
        name,
        salary,
        RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
WHERE salary_rank = 1;

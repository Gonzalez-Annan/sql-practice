-- Find employees ranked 1 or 2 by salary
-- inside each department.

SELECT
    name,
    department_id,
    salary,
    salary_rank
FROM (
    SELECT
        name,
        department_id,
        salary,
        RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
WHERE salary_rank <= 2;

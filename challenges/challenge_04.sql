-- Rank employees by salary inside their own department.
-- Highest salary should have rank 1.

SELECT
    name,
    department_id,
    salary,
    RANK() OVER (
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;

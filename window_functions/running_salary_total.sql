SELECT
    name,
    salary,
    SUM(salary) OVER (
        ORDER BY salary
    ) AS running_total
FROM employees;

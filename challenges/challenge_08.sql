-- Return each employee together with:
-- name
-- salary
-- department average salary
-- difference between employee salary and department average

SELECT
    name,
    salary,
    AVG(salary) OVER (
        PARTITION BY department_id
    ) AS department_average,
    salary - AVG(salary) OVER (
        PARTITION BY department_id
    ) AS difference_from_department_average
FROM employees;

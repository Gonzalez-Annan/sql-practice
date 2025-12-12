-- Find the difference between each employee's salary
-- and the highest salary in the company.
-- Return:
-- name
-- salary
-- difference_from_max

SELECT
    name,
    salary,
    (
        SELECT MAX(salary)
        FROM employees
    ) - salary AS difference_from_max
FROM employees;

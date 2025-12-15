-- Show each employee and the number of employees
-- working in the same department.
-- Use a window function.

SELECT
    name,
    department_id,
    COUNT(*) OVER (
        PARTITION BY department_id
    ) AS employees_in_department
FROM employees;

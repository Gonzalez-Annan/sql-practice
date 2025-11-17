-- Find the department with the highest average salary.

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
ORDER BY average_salary DESC
LIMIT 1;

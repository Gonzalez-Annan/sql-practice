-- Find the average salary for each department.
-- Only show departments with an average salary above 65000.

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 65000;

SELECT
    department_id,
    AVG(salary) AS department_average
FROM employees
GROUP BY department_id
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM employees
);

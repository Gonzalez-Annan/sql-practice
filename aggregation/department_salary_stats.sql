SELECT
    department_id,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

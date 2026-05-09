DROP VIEW IF EXISTS department_salary_summary;

CREATE VIEW department_salary_summary AS
SELECT
    department_id,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary,
    MAX(salary) AS maximum_salary
FROM employees
GROUP BY department_id;

SELECT *
FROM department_salary_summary;

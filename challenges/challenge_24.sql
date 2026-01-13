-- For every employee, show the previous lower salary
-- when employees are ordered by salary.
-- Hint: LAG()

SELECT
    name,
    salary,
    LAG(salary) OVER (
        ORDER BY salary
    ) AS previous_lower_salary
FROM employees
ORDER BY salary;

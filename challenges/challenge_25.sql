-- For every employee, show the next higher salary
-- when employees are ordered by salary.
-- Hint: LEAD()

SELECT
    name,
    salary,
    LEAD(salary) OVER (
        ORDER BY salary
    ) AS next_higher_salary
FROM employees
ORDER BY salary;

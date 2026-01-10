-- Find employees who earn more than at least two other employees.

SELECT
    e1.name,
    e1.salary
FROM employees AS e1
WHERE (
    SELECT COUNT(*)
    FROM employees AS e2
    WHERE e2.salary < e1.salary
) >= 2;

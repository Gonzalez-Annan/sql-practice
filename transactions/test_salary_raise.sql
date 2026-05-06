BEGIN TRANSACTION;

UPDATE employees
SET salary = salary + 5000
WHERE department_id = 3;

SELECT
    name,
    salary
FROM employees
WHERE department_id = 3;

ROLLBACK;

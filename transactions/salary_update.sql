BEGIN TRANSACTION;

UPDATE employees
SET salary = salary * 1.05
WHERE department_id = 1;

SELECT *
FROM employees
WHERE department_id = 1;

ROLLBACK;

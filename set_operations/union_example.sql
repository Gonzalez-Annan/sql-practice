SELECT name
FROM employees
WHERE department_id = 1

UNION

SELECT name
FROM employees
WHERE department_id = 3;

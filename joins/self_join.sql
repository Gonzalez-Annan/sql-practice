SELECT
    e1.name AS employee_1,
    e2.name AS employee_2,
    e1.department_id
FROM employees e1
JOIN employees e2
    ON e1.department_id = e2.department_id
   AND e1.id < e2.id;

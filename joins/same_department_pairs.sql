SELECT
    e1.name AS employee_1,
    e2.name AS employee_2,
    e1.department_id
FROM employees AS e1
JOIN employees AS e2
    ON e1.department_id = e2.department_id
   AND e1.id < e2.id
ORDER BY e1.department_id;

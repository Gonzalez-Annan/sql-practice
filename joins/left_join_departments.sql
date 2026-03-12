SELECT
    departments.name AS department,
    employees.name AS employee
FROM departments
LEFT JOIN employees
    ON employees.department_id = departments.id
ORDER BY departments.name;

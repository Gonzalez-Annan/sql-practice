-- Categorize employees into:
-- High: salary >= 80000
-- Medium: salary >= 65000
-- Low: salary < 65000
-- Return the number of employees in each category.

SELECT
    CASE
        WHEN salary >= 80000 THEN 'High'
        WHEN salary >= 65000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category,
    COUNT(*) AS employee_count
FROM employees
GROUP BY salary_category;

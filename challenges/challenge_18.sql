-- Return employees whose name contains the letter 'a'
-- regardless of uppercase or lowercase.

SELECT
    name
FROM employees
WHERE LOWER(name) LIKE '%a%';

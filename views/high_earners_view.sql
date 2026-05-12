DROP VIEW IF EXISTS high_earners;

CREATE VIEW high_earners AS
SELECT
    name,
    salary
FROM employees
WHERE salary >= 70000;

SELECT *
FROM high_earners;

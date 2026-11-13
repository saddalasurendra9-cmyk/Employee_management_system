USE employee_management;

-- Query 1: Employees earning more than 40000
SELECT * FROM employees WHERE salary > 40000;

-- Query 2: Employees hired after 2023-01-01
SELECT * FROM employees WHERE hire_date > '2023-01-01';

-- Query 3: Sort employees by salary, highest first
SELECT * FROM employees ORDER BY salary DESC;

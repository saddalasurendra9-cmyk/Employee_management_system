USE employee_management;

-- Query 1: Highest salary
SELECT MAX(salary) AS highest_salary FROM employees;

-- Query 2: Average salary
SELECT ROUND(AVG(salary), 2) AS average_salary FROM employees;

-- Query 3: Employees earning between 30000 and 50000
SELECT employee_name, salary FROM employees
WHERE salary BETWEEN 30000 AND 50000 ORDER BY salary;

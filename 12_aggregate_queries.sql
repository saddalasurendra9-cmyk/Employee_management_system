USE employee_management;

-- Query 1: Total monthly salary cost
SELECT SUM(salary) AS total_monthly_salary FROM employees;

-- Query 2: Salary statistics by department
SELECT d.department_name, COUNT(e.employee_id) AS employee_count,
       ROUND(AVG(e.salary), 2) AS average_salary, MAX(e.salary) AS max_salary
FROM departments d LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;

-- Query 3: Employees hired each year
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS employees_hired
FROM employees GROUP BY YEAR(hire_date) ORDER BY hire_year;

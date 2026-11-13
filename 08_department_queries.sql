USE employee_management;

-- Query 1: List departments
SELECT * FROM departments;

-- Query 2: Count employees in each department
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM departments d LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;

-- Query 3: Employees in the IT department
SELECT e.employee_name, e.salary
FROM employees e JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Information Technology';

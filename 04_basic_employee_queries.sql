USE employee_management;

-- Query 1: Display all employees
SELECT * FROM employees;

-- Query 2: Display employee names and salaries
SELECT employee_name, salary FROM employees;

-- Query 3: Find an employee by ID
SELECT * FROM employees WHERE employee_id = 1;

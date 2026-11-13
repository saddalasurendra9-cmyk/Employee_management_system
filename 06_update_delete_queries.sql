USE employee_management;

-- Query 1: Update one employee's phone (change ID/value as needed)
UPDATE employees SET phone = '9111111111' WHERE employee_id = 1;

-- Query 2: Increase salary by 5% for IT department
UPDATE employees SET salary = salary * 1.05
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Information Technology');

-- Query 3: Safe example of deletion; inspect target before running
-- DELETE FROM employees WHERE employee_id = 999;
SELECT * FROM employees WHERE employee_id = 999;

USE employee_management;

-- Query 1: Employees with department names
SELECT e.employee_id, e.employee_name, d.department_name
FROM employees e LEFT JOIN departments d ON e.department_id = d.department_id;

-- Query 2: Employees and their attendance
SELECT e.employee_name, a.attendance_date, a.status
FROM employees e JOIN attendance a ON e.employee_id = a.employee_id
ORDER BY a.attendance_date, e.employee_name;

-- Query 3: Employees and their leave requests
SELECT e.employee_name, l.start_date, l.end_date, l.reason, l.status
FROM employees e JOIN leave_records l ON e.employee_id = l.employee_id;

USE employee_management;

-- Query 1: View attendance records
SELECT * FROM attendance ORDER BY attendance_date DESC;

-- Query 2: Count present days per employee
SELECT e.employee_name, COUNT(*) AS present_days
FROM employees e JOIN attendance a ON e.employee_id = a.employee_id
WHERE a.status = 'Present'
GROUP BY e.employee_id, e.employee_name;

-- Query 3: Attendance for a chosen date
SELECT e.employee_name, a.status
FROM attendance a JOIN employees e ON a.employee_id = e.employee_id
WHERE a.attendance_date = '2026-11-02';

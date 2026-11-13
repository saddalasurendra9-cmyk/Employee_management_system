USE employee_management;

INSERT IGNORE INTO departments (department_id, department_name, location) VALUES
(1, 'Human Resources', 'Hyderabad'),
(2, 'Information Technology', 'Hyderabad'),
(3, 'Finance', 'Bengaluru'),
(4, 'Sales', 'Chennai');

INSERT IGNORE INTO employees
(employee_id, employee_name, email, phone, salary, department_id, hire_date) VALUES
(1, 'Aarav Sharma', 'aarav@example.com', '9000000001', 45000.00, 2, '2023-02-10'),
(2, 'Priya Reddy', 'priya@example.com', '9000000002', 52000.00, 1, '2022-07-18'),
(3, 'Rahul Kumar', 'rahul@example.com', '9000000003', 38000.00, 4, '2024-01-05'),
(4, 'Ananya Rao', 'ananya@example.com', '9000000004', 61000.00, 2, '2021-11-22'),
(5, 'Vikram Singh', 'vikram@example.com', '9000000005', 47000.00, 3, '2023-06-12');

INSERT IGNORE INTO attendance (employee_id, attendance_date, status) VALUES
(1, '2026-11-02', 'Present'),
(2, '2026-11-02', 'Remote'),
(3, '2026-11-02', 'Absent'),
(4, '2026-11-02', 'Present'),
(5, '2026-11-02', 'Present');

INSERT INTO leave_records (employee_id, start_date, end_date, reason, status)
SELECT 2, '2026-12-01', '2026-12-02', 'Personal work', 'Pending'
WHERE NOT EXISTS (
    SELECT 1 FROM leave_records
    WHERE employee_id = 2 AND start_date = '2026-12-01' AND end_date = '2026-12-02'
);

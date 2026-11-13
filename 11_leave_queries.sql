USE employee_management;

-- Query 1: View pending leave requests
SELECT * FROM leave_records WHERE status = 'Pending';

-- Query 2: Approve a leave request (change ID as needed)
-- UPDATE leave_records SET status = 'Approved' WHERE leave_id = 1;
SELECT * FROM leave_records WHERE leave_id = 1;

-- Query 3: Show approved leave requests with employee names
SELECT e.employee_name, l.start_date, l.end_date
FROM leave_records l JOIN employees e ON l.employee_id = e.employee_id
WHERE l.status = 'Approved';

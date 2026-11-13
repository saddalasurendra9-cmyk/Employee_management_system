USE employee_management;

CREATE TABLE IF NOT EXISTS departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(80) NOT NULL UNIQUE,
    location VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE,
    phone VARCHAR(25),
    salary DECIMAL(10,2) NOT NULL DEFAULT 0 CHECK (salary >= 0),
    department_id INT NULL,
    hire_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_employee_department FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
        ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    status ENUM('Present', 'Absent', 'Remote') NOT NULL DEFAULT 'Present',
    UNIQUE KEY uq_employee_attendance_date (employee_id, attendance_date),
    CONSTRAINT fk_attendance_employee FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS leave_records (
    leave_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    reason VARCHAR(255),
    status ENUM('Pending', 'Approved', 'Rejected') NOT NULL DEFAULT 'Pending',
    CONSTRAINT chk_leave_dates CHECK (end_date >= start_date),
    CONSTRAINT fk_leave_employee FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS salary_payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    payment_month DATE NOT NULL COMMENT 'Use first day of the month',
    amount DECIMAL(10,2) NOT NULL,
    paid_on DATE,
    status ENUM('Pending', 'Paid') NOT NULL DEFAULT 'Pending',
    UNIQUE KEY uq_employee_payment_month (employee_id, payment_month),
    CONSTRAINT fk_payment_employee FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id) ON DELETE CASCADE
);

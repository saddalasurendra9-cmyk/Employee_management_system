# Employee Management System (SQL + Python)

A beginner-friendly command-line employee management project using **MySQL** and **Python**.

## Features
- Create the database and tables
- Add, list, search, update, and delete employees
- Manage departments
- Record attendance
- Record leave requests
- View salary summaries and department reports
- Keep SQL practice queries in separate files

## Requirements
- Python 3.10+
- MySQL Server
- MySQL Workbench (optional)

## Setup

### 1. Create the database
Open MySQL Workbench or the MySQL command line and run the contents of `sql/01_create_database.sql`.
Then run `sql/02_create_tables.sql`, followed by `sql/03_sample_data.sql`.

You can also run a SQL file from a terminal:
```bash
mysql -u root -p < sql/01_create_database.sql
mysql -u root -p < sql/02_create_tables.sql
mysql -u root -p < sql/03_sample_data.sql
```

### 2. Install the Python dependency
```bash
python -m pip install -r requirements.txt
```

### 3. Configure the connection
Copy `.env.example` to `.env` and fill in your MySQL username/password.
The project reads `.env` if `python-dotenv` is installed. Otherwise, set environment variables or edit `db_connection.py`.

Example `.env`:
```text
DB_HOST=localhost
DB_PORT=3306
DB_USER=root
DB_PASSWORD=your_mysql_password
DB_NAME=employee_management
```

### 4. Run the application
```bash
python main.py
```

## Project structure
```text
Employee_Management_System/
├── main.py
├── db_connection.py
├── requirements.txt
├── .env.example
├── README.md
└── sql/
    ├── 01_create_database.sql
    ├── 02_create_tables.sql
    ├── 03_sample_data.sql
    ├── 04_basic_employee_queries.sql
    ├── 05_filter_sort_queries.sql
    ├── 06_update_delete_queries.sql
    ├── 07_salary_queries.sql
    ├── 08_department_queries.sql
    ├── 09_join_queries.sql
    ├── 10_attendance_queries.sql
    ├── 11_leave_queries.sql
    └── 12_aggregate_queries.sql
```

## Notes
- This is a learning project. Back up your database before running `DELETE` or other data-changing queries.
- The sample data uses fictional employees.
- Passwords are not stored in this project; configure your local database credentials in `.env`.

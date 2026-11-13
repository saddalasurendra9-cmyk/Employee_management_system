"""
import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="6305surendra@",
    database="employee_management"
)

cur = con.cursor()
name = input("Enter employee name: ")
age = int(input("Enter employee age: "))
department = input("Enter department: ")
salary = float(input("Enter salary: "))

sql = 
INSERT INTO employees (name, age, department, salary)
VALUES (%s, %s, %s, %s)


values = (name, age, department,salary)

cur.execute(sql, values)
con.commit()

print("Employee added successfully!")

cur.close()
con.close()
"""

import mysql.connector

# Connect Python to MySQL
con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="6305surendra@",
    database="employee_management"
)

if con.is_connected():
    print("MySQL connected successfully!")

# Create cursor
cur = con.cursor()

# Display employee records
cur.execute("SELECT * FROM employees")

records = cur.fetchall()

for row in records:
    print(row)

# Close connection
cur.close()
con.close()


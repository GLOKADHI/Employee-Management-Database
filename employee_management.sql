--Worked Query
--Output in Screenshot
-- Employee Management Database
CREATE DATABASE employee_management;
USE employee_management;

-- Departments Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL UNIQUE
);

-- Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    salary DECIMAL(10,2),
    join_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert Departments
INSERT INTO departments (department_name) VALUES
('HR'),
('Engineering'),
('Finance'),
('Marketing');

-- Insert Employees
INSERT INTO employees (employee_name, department_id, salary, join_date) VALUES
('Arjun Kumar', 2, 60000, '2023-01-15'),
('Meena Sharma', 1, 45000, '2022-08-10'),
('Rahul Verma', 3, 55000, '2021-11-05'),
('Priya Singh', 2, 70000, '2023-03-20');

-- Select Queries
SELECT * FROM employees;

SELECT employee_name, salary
FROM employees
WHERE department_id = 2;

SELECT employee_name, salary
FROM employees
ORDER BY salary DESC;

-- Join Query
SELECT e.employee_name, d.department_name, e.salary, e.join_date
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- Update Query
UPDATE employees
SET salary = 65000
WHERE employee_name = 'Arjun Kumar';

-- Delete Query
DELETE FROM employees
WHERE employee_name = 'Priya Singh';

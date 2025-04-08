CREATE DATABASE IF NOT EXISTS employee_management;
USE employee_management;

-- Create the departments table
CREATE TABLE IF NOT EXISTS departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100),
    manager_id INT
);

-- Create the employees table (without foreign key)
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    hire_date DATE,
    job_title VARCHAR(50),
    department_id INT
);

-- Create the salaries table (without foreign key)
CREATE TABLE IF NOT EXISTS salaries (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    basic_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    total_salary DECIMAL(10,2)
);

-- Create the projects table
CREATE TABLE IF NOT EXISTS projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    status ENUM('Ongoing', 'Completed', 'On Hold')
);

-- Create the employee_projects table
CREATE TABLE IF NOT EXISTS employee_projects (
    employee_id INT,
    project_id INT,
    assigned_date DATE,
    PRIMARY KEY (employee_id, project_id)
);

-- Create the leaves table
CREATE TABLE IF NOT EXISTS leaves (
    leave_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    leave_type ENUM('Sick', 'Casual', 'Paid', 'Unpaid'),
    start_date DATE,
    end_date DATE,
    status ENUM('Pending', 'Approved', 'Rejected')
);

-- Insert data into the departments table
INSERT INTO departments (department_id, department_name, manager_id) VALUES 
(1, 'Sales', 1),
(2, 'Marketing', 2),
(3, 'HR', 3),
(4, 'Finance', 4),
(5, 'IT', 5),
(6, 'Operations', 6),
(7, 'Legal', 7),
(8, 'R&D', 8),
(9, 'Customer Support', 9),
(10, 'Logistics', 10);

-- Insert data into the employees table
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_title, department_id) VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', '2020-01-15', 'Manager', 1),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2019-11-20', 'Developer', 2),
('Sam', 'Brown', 'sam.brown@example.com', '555-8765', '2021-03-11', 'HR Specialist', 3),
('Chris', 'Davis', 'chris.davis@example.com', '555-4321', '2018-05-30', 'Accountant', 4),
('Pat', 'Wilson', 'pat.wilson@example.com', '555-6543', '2017-08-10', 'IT Support', 5),
('Alex', 'Taylor', 'alex.taylor@example.com', '555-3456', '2016-02-14', 'Operations Manager', 6),
('Morgan', 'Martinez', 'morgan.martinez@example.com', '555-7654', '2018-12-01', 'Legal Advisor', 7),
('Jordan', 'Anderson', 'jordan.anderson@example.com', '555-8764', '2020-09-21', 'R&D Lead', 8),
('Drew', 'Thomas', 'drew.thomas@example.com', '555-9876', '2019-07-04', 'Customer Support Specialist', 9),
('Casey', 'Jackson', 'casey.jackson@example.com', '555-2468', '2022-05-18', 'Logistics Coordinator', 10);

-- Insert data into the salaries table
INSERT INTO salaries (employee_id, basic_salary, bonus, total_salary) VALUES
(1, 60000.00, 5000.00, 65000.00),
(2, 55000.00, 4000.00, 59000.00),
(3, 45000.00, 3000.00, 48000.00),
(4, 65000.00, 6000.00, 71000.00),
(5, 50000.00, 4000.00, 54000.00),
(6, 70000.00, 7000.00, 77000.00),
(7, 75000.00, 8000.00, 83000.00),
(8, 80000.00, 9000.00, 89000.00),
(9, 40000.00, 2000.00, 42000.00),
(10, 45000.00, 3500.00, 48500.00);

-- Insert data into the projects table
INSERT INTO projects (project_name, start_date, end_date, status) VALUES
('Project Alpha', '2022-01-01', '2022-06-30', 'Completed'),
('Project Beta', '2022-02-15', '2022-09-15', 'Ongoing'),
('Project Gamma', '2022-03-01', NULL, 'On Hold'),
('Project Delta', '2022-04-10', '2022-12-01', 'Completed'),
('Project Epsilon', '2022-06-01', NULL, 'Ongoing');

-- Insert data into the employee_projects table
INSERT INTO employee_projects (employee_id, project_id, assigned_date) VALUES
(1, 1, '2022-01-01'),
(2, 2, '2022-02-15'),
(3, 3, '2022-03-01'),
(4, 4, '2022-04-10'),
(5, 5, '2022-06-01'),
(6, 1, '2022-01-01'),
(7, 2, '2022-02-15'),
(8, 4, '2022-04-10'),
(9, 3, '2022-03-01'),
(10, 5, '2022-06-01');

-- Insert data into the leaves table
INSERT INTO leaves (employee_id, leave_type, start_date, end_date, status) VALUES
(1, 'Sick', '2022-05-01', '2022-05-05', 'Approved'),
(2, 'Casual', '2022-06-10', '2022-06-12', 'Pending'),
(3, 'Paid', '2022-07-20', '2022-07-22', 'Approved'),
(4, 'Unpaid', '2022-08-01', '2022-08-05', 'Rejected'),
(5, 'Sick', '2022-09-05', '2022-09-07', 'Approved'),
(6, 'Casual', '2022-10-15', '2022-10-17', 'Pending'),
(7, 'Paid', '2022-11-05', '2022-11-07', 'Approved'),
(8, 'Unpaid', '2022-12-01', '2022-12-03', 'Rejected'),
(9, 'Sick', '2022-12-10', '2022-12-12', 'Approved'),
(10, 'Casual', '2023-01-10', '2023-01-12', 'Pending');



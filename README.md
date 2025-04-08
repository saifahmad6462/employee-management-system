# Employee Management System

## Project Overview

The **Employee Management System** is a database-driven project designed to manage employee information, departments, salaries, projects, and leave requests. The system is built using MySQL to store and organize data, making it easier for organizations to track and manage their employee records.

This system allows for:
- Employee management (add, update, and delete employee details)
- Department management (view departments and their managers)
- Salary management (track and update salary records)
- Project management (assign employees to projects and track progress)
- Leave management (manage leave requests and their approval status)

## Features

- **Employee Management**: Add, update, delete employee records, and retrieve employee details based on department, job title, or project.
- **Department Management**: List departments with their managers, show employees within a department.
- **Salary Management**: Store and update salary records, generate payroll reports for employees.
- **Project Management**: Assign employees to projects, track project progress and completion status.
- **Leave Management**: Request leave and track approval status, generate reports on leave history.

## Database Structure

The system uses the following tables:

### 1. **Employees**
Stores basic employee information including their job title, department, and contact details.

**Columns**:
- `employee_id` (INT) - Unique ID for each employee.
- `first_name` (VARCHAR) - Employee's first name.
- `last_name` (VARCHAR) - Employee's last name.
- `email` (VARCHAR) - Employee's email address (unique).
- `phone_number` (VARCHAR) - Employee's contact number.
- `hire_date` (DATE) - The date the employee was hired.
- `job_title` (VARCHAR) - Employee's job title.
- `department_id` (INT) - Foreign key referencing the departments table.

### 2. **Departments**
Stores department details such as department name and manager.

**Columns**:
- `department_id` (INT) - Unique department ID.
- `department_name` (VARCHAR) - Name of the department.
- `manager_id` (INT) - Employee ID of the department's manager (foreign key).

### 3. **Salaries**
Stores salary details for each employee.

**Columns**:
- `salary_id` (INT) - Unique salary record ID.
- `employee_id` (INT) - Foreign key referencing the employees table.
- `basic_salary` (DECIMAL) - Employee's basic salary.
- `bonus` (DECIMAL) - Bonus amount.
- `total_salary` (DECIMAL) - Calculated as `basic_salary + bonus`.

### 4. **Projects**
Stores project details including project status.

**Columns**:
- `project_id` (INT) - Unique project ID.
- `project_name` (VARCHAR) - Name of the project.
- `start_date` (DATE) - Project start date.
- `end_date` (DATE) - Project end date (nullable).
- `status` (ENUM) - Project status (`Ongoing`, `Completed`, `On Hold`).

### 5. **Employee_Projects**
Tracks which employees are assigned to which projects.

**Columns**:
- `employee_id` (INT) - Foreign key referencing the employees table.
- `project_id` (INT) - Foreign key referencing the projects table.
- `assigned_date` (DATE) - Date when the employee was assigned to the project.

### 6. **Leaves**
Stores leave request details for employees.

**Columns**:
- `leave_id` (INT) - Unique leave record ID.
- `employee_id` (INT) - Foreign key referencing the employees table.
- `leave_type` (ENUM) - Type of leave (`Sick`, `Casual`, `Paid`, `Unpaid`).
- `start_date` (DATE) - Leave start date.
- `end_date` (DATE) - Leave end date.
- `status` (ENUM) - Leave status (`Pending`, `Approved`, `Rejected`).

## Setup

To set up the **Employee Management System** on your local machine, follow these steps:

### Prerequisites

- **MySQL**: You need MySQL installed to create and manage the database.
- **MySQL Workbench** (optional): For easier interaction with MySQL databases.

### Steps

1. **Clone the Repository** (optional):
   - Clone this repository to your local machine.
   ```bash
   git clone https://github.com/your-username/employee-management-system.git

SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.phone_number,
    e.hire_date,
    e.job_title,
    d.department_name,
    s.basic_salary,
    s.bonus,
    s.total_salary
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
JOIN 
    salaries s ON e.employee_id = s.employee_id;



SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.phone_number,
    e.hire_date,
    e.job_title,
    p.project_name,
    ep.assigned_date
FROM 
    employees e
JOIN 
    employee_projects ep ON e.employee_id = ep.employee_id
JOIN 
    projects p ON ep.project_id = p.project_id
WHERE 
    p.project_id = 1;
    
    

SELECT 
    SUM(s.total_salary) AS total_salary_expense
FROM 
    salaries s
JOIN 
    employees e ON s.employee_id = e.employee_id
WHERE 
    Month(e.hire_date) = MONTH('2022-05-01')
    AND YEAR(e.hire_date) = YEAR('2022-05-01');
    

SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.phone_number,
    e.hire_date,
    e.job_title,
    l.leave_type,
    l.start_date,
    l.end_date,
    l.status
FROM 
    employees e
JOIN 
    leaves l ON e.employee_id = l.employee_id
WHERE 
    l.status = 'Pending';


SELECT 
    d.department_name,
    COUNT(e.employee_id) AS number_of_employees
FROM 
    departments d
LEFT JOIN 
    employees e ON d.department_id = e.department_id
GROUP BY 
    d.department_name;

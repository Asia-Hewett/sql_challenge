SELECT 
	employee_number as "Employee Number",
	last_name as "Last Name",
	first_name as "First Name",
	sex as "Gender",
	salary as "Salary"
FROM Employees
JOIN Salaries
ON (Employees.employee_number = Salary.employee_number);

-- -- List first name, last name,
-- -- and hire date for employees who were hired in 1986.

SELECT
	first_name as "First Name",
	last_name as "Last Name",
	hire_date as "Hire Date"
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- -- List the manager of each department with the following information: 
-- -- department number, department name, the manager's employee number, last name, first name.

SELECT
	dept_number as "Department Number",
	dept_name as "Department Name",
	employee_number as "Employee Number",
	last_name as "Last Name",
	first_name as "First Name"
FROM Departments
JOIN Dept_Manager 
ON (dept_number = dept_number)
JOIN Employees
ON (employee_number = employee_number);
	
-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT
	employee_number as "Employee Number",
	last_name as "Last Name",
	first_name as "First Name",
	dept_name as "Department Name"
FROM Employees
JOIN Dept_Emp
ON (employee_number = employee_number)
JOIN Departments
ON (department_number = department_number);
	
-- List first name, last name, and sex for employees whose first name is 
-- "Hercules" and last names begin with "B."

SELECT
	first_name as "First Name",
	last_name as "Last Name",
	sex as "Gender"
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

SELECT
	employee_number as "Employee Number",
 	last_name as "Last Name",
	first_name as "First Name",
	department_name as "Department Name"
FROM Employees
JOIN Dept_Emp
ON (employee_number = employee_number)
JOIN Departments
ON (department_number = department_number)
WHERE department_name = 'Sales';

-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.

SELECT
	employee_number as "Employee Number",
	last_name as "Last Name",
	first_name as "First Name",
	department_name as "Department Name"
FROM Employees
JOIN Dept_Emp
ON (employee_number = employee_number)
JOIN Departments
ON (department_number = department_number)
WHERE department_name = 'Sales' OR department_name ='Development';

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

SELECT
	last_name as "Last Name",
	COUNT(last_name) Frequency
FROM employees
GROUP BY "Last Name"
ORDER BY Frequency desc;
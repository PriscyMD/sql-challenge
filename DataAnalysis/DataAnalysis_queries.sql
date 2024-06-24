--1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT A.emp_no,
		A.last_name, 
		A.first_name, 
		A.sex, 
		B.salary AS salary
FROM 
	employees A
JOIN 
	salaries B 
ON A.emp_no = B.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT i.emp_no, 
		i.first_name, 
		i.last_name, 
		i.hire_date
FROM 
	employees i
WHERE EXTRACT(YEAR FROM i.hire_date) = 1986;

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT A.dept_no, 
		B.dept_name, 
		C.emp_no, 
		C.last_name, 
		C.first_name
FROM 
	dept_manager A
JOIN 
	departments B ON A.dept_no = B.dept_no
JOIN 
	employees C ON C.emp_no = A.emp_no;


--4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT A.dept_no, 
		A.emp_no, 
		B.last_name,
		B.first_name, 
		C.dept_name
FROM 
	dept_emp A
JOIN 
	employees B ON A.emp_no = B.emp_no
JOIN 
	departments C ON A.dept_no = C.dept_no

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, 
		last_name, 
		sex
FROM 
	employees
WHERE 
	first_name = 'Hercules' AND last_name LIKE 'B%'
--6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT C.emp_no, 
		C.last_name, 
		C.first_name
FROM 
	dept_emp A
JOIN 
	departments B ON A.dept_no = B.dept_no
JOIN 
	employees C ON A.emp_no = C.emp_no
WHERE 
	B.dept_name = 'Sales'
	
--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT C.emp_no, 
		C.last_name, 
		C.first_name, 
		B.dept_name
FROM 
	dept_emp A
JOIN 
	departments B ON A.dept_no = B.dept_no
JOIN 
	employees C ON A.emp_no = C.emp_no
WHERE 
	B.dept_name = 'Sales' OR B.dept_name = 'Development'

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT 
	last_name, COUNT(*) AS frequency
FROM 
	employees
GROUP BY 
	last_name
ORDER BY 
	frequency DESC
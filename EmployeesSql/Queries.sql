-- Data Analysis
--Q1
Select e.emp_no,e.last_name,e.first_name,e.sex,s.salary
From employees e
Join salaries s
	on e.emp_no = s.emp_no
-- Data Analysis
--Q2
Select first_name,last_name,hire_date
From employees
where hire_date Between '01/01/1986' And '12/31/1986'
-- Data Analysis
--Q3
Select e.emp_title_id As Manager, dm.dept_no As Department_Number,d.dept_name As Department_Name,e.emp_no,e.last_name,e.first_name
From employees e
Join dept_manager dm
	on	e.emp_no = dm.emp_no
Join departments d
	on dm.dept_no = d.dept_no

-- Data Analysis
--Q4
Select de.dept_no,e.emp_no,e.last_name,e.first_name,d.dept_name
From employees e
Join dept_emp de
	on	e.emp_no = de.emp_no
Join departments d
	on de.dept_no = d.dept_no	
-- Data Analysis
--Q5
Select first_name,last_name,sex
from employees
where first_name='Hercules' And last_name Like 'B%'
-- Data Analysis
--Q6
Select e.emp_no,e.last_name,e.first_name,d.dept_name
From employees e
Join dept_emp de
	on	e.emp_no = de.emp_no
Join departments d
	on de.dept_no = d.dept_no	
Where d.dept_name='Sales'
-- Data Analysis
--Q7
Select e.emp_no,e.last_name,e.first_name,d.dept_name
From employees e
Join dept_emp de
	on	e.emp_no = de.emp_no
Join departments d
	on de.dept_no = d.dept_no	
Where d.dept_name='Development'
Union
Select e.emp_no,e.last_name,e.first_name,d.dept_name
From employees e
Join dept_emp de
	on	e.emp_no = de.emp_no
Join departments d
	on de.dept_no = d.dept_no	
Where d.dept_name='Sales'
-- Data Analysis
--Q8
Select last_name,Count(*)
From employees
Group by last_name 
Order by Count(*) Desc;
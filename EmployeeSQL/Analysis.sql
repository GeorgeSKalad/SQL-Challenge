--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no , e.last_name, e.first_name, e.sex, s.salary
from employees as e
left join salaries as s
on e.emp_no = s.emp_no
order by e.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986.
Select e.last_name, e.first_name,e.hire_date
from employees as e
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department along with their department number, department name, employee number,
--last name,and first name.
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        e.last_name,
        e.first_name
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN employees AS e
        ON (dm.emp_no = e.emp_no);


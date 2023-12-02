select e.emp_no, last_name, first_name, sex, s.salary
from employees as e
left join salaries as s on s.emp_no=e.emp_no
;

select first_name,last_name,hire_date 
from employees
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31'
;


select dept_name, d.dept_no, dm.emp_no, last_name, first_name
from departments as d
right join dept_manager as dm on dm.dept_no=d.dept_no
inner join employees as e on e.emp_no=dm.emp_no
;

select de.dept_no, de.emp_no, last_name, first_name, dept_name
from dept_emp as de 
left join employees as e on de.emp_no=e.emp_no
inner join departments as d on de.dept_no=d.dept_no
;

select first_name,last_name, sex 
from employees
where first_name = 'Hercules' and last_name like 'B%'
;


select dept_name, first_name,last_name, sex, e.emp_no 
from employees as e
left join dept_emp as de on e.emp_no=de.emp_no
left join departments as d on d.dept_no=de.dept_no
where dept_name = 'Sales'
;

select dept_name, first_name,last_name, sex, e.emp_no 
from employees as e
left join dept_emp as de on e.emp_no=de.emp_no
left join departments as d on d.dept_no=de.dept_no
where dept_name = 'Sales' or dept_name = 'Development'
;

select last_name, count(last_name)as frequency_count
from employees 
group by last_name
order by  frequency_count desc
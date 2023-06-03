-- Data Analysis Queries

-- 1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s on e.emp_no = s.emp_no;

-- 2
select first_name, last_name, hire_date
from employees
where date_part('year', hire_date) = 1986;

-- 3
select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_managers dm
join departments d on dm.dept_no = d.dept_no
join employees e on dm.emp_no = e.emp_no;

-- 4
select de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
join employees e on de.emp_no = e.emp_no
join departments d on de.dept_no = d.dept_no;

-- 5
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6
select e.emp_no, e.last_name, e.first_name
from employees e
join dept_emp de on de.emp_no = e.emp_no
where de.dept_no = 'd007';

-- 7
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments d on de.dept_no = d.dept_no
where d.dept_name in ('Sales', 'Development');

-- 8
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;
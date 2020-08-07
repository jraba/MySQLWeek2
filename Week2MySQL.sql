-- 1. 
select t.title as "Title", count(e.birth_date) as "Birth Date after 1965"
from employees e
inner join titles t on t.emp_no = e.emp_no
group by t.title
having count(e.birth_date) > '1965-01-01';

-- 2. 
select t.title as "Title", avg(s.salary) as "Average Salary"
from titles t
inner join salaries s on s.emp_no = t.emp_no 
group by t.title;

-- 3.
select sum(s.salary), d.dept_name
from salaries s
inner join dept_emp de on s.emp_no = de.emp_no 
inner join departments d on d.dept_no = de.dept_no
where d.dept_name = 'Marketing'
and year(s.from_date) >= 1990 and year(s.to_date) <= 1992;



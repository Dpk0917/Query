select *
from employee_demographics;

select * 
from employee_salary;

select *
from employee_demographics
where employee_id in 
			(	select employee_id
				from employee_salary
                where dept_id=1
			)
;


select first_name,last_name,
(select avg(salary)
from employee_salary
)
from employee_salary;

select gender , avg(age),min(age),max(age),count(age)
from employee_demographics
group by gender;

select *
from(select gender , avg(age),min(age),max(age),count(age)
from employee_demographics
group by gender) as agg_table;

select  avg(`min(age)`),avg(`max(age)`),avg(`count(age)`)
from(select gender , avg(age),min(age),max(age),count(age)
from employee_demographics
group by gender) as agg_table
;
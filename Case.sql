select first_name,
last_name,
age,
case
	when age<=30 then 'YOUNG'
    when age between 31 and 50 then 'old'
    else 'on death door'
end as age_group
from employee_demographics;

select first_name,last_name,salary,
case 	
	when salary<50000 then salary+(salary*0.5)
    when salary>=50000 then salary+(salary*0.7)
end as new_salary,
case
	when dept_id=6 then salary*0.10
end as bonus
from employee_salary;
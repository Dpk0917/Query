select * 
from employee_demographics;

select *
from employee_salary;


-- INNER JOIN  (default)
select *
from employee_demographics
inner join employee_salary
	on employee_demographics.employee_id=employee_salary.employee_id;
    
select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id=sal.employee_id;
    
-- OUTER JOIN 

-- left join 

select *
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id=sal.employee_id;

-- right join 
select *
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id=sal.employee_id;
    
    
-- SELF JOIN
select *
from employee_salary as emp1
JOIN employee_salary as emp2
	ON emp1.employee_id=emp2.employee_id;
    
SELECT 
    emp1.employee_id AS emp1_id,
    emp1.first_name AS emp1_first_name,
    emp1.last_name AS emp1_last_name,
    emp2.employee_id AS emp2_id,
    emp2.first_name AS emp2_first_name,
    emp2.last_name AS emp2_last_name
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
    ON emp1.employee_id + 1 = emp2.employee_id;


-- joining multiple
select *
from employee_demographics
inner join employee_salary
	on employee_demographics.employee_id=employee_salary.employee_id
inner join parks_departments as pd
	on employee_salary.dept_id=pd.department_id;
    
select *
from parks_departments;
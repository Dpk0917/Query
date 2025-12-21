select length('Dpk');

select * 
from employee_demographics;

select first_name,length(first_name) as length
from employee_demographics
order by 2;

-- upper
select upper('Dpk');
select first_name,upper(first_name) as upper
from employee_demographics;

-- lower
select lower('Dpk');
select first_name,lower(first_name) as lower
from employee_demographics;

-- trim-- 
select trim('             Dpk           ');

-- ltrim-- 
select ltrim('             Dpk           ');

-- rtrim-- 
select rtrim('             Dpk           ');


-- substring, left,right
select first_name,
left(first_name,4),
right(first_name,4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) as birth_month
from employee_demographics;

-- replace 
select first_name,replace(first_name,'a','z')
from employee_demographics;

-- locate
select locate('x','Alexander');

select first_name,locate('An',first_name)
from employee_demographics;


-- concat
select first_name,last_name,
concat(first_name,last_name)
from employee_demographics;

select first_name,last_name,
concat(first_name,' ',last_name) as full_name
from employee_demographics;

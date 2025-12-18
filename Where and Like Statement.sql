select * 
from parks_and_recreation.employee_demographics
where first_name='Leslie';

select *  
from parks_and_recreation.employee_salary
where salary>=50000;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender!='female';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender!='female'
AND birth_date>'1985-01-01';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender!='female'
OR birth_date>'1985-01-01';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender!='female'
OR NOT birth_date>'1985-01-01';

# LIKE  STATEMENT
# % && _

select * 
from parks_and_recreation.employee_demographics
where first_name='Leslie';

select * 
from parks_and_recreation.employee_demographics
where first_name LIKE '%es%';


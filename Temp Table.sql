CREATE TEMPORARY TABLE temp_table (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    movie_name VARCHAR(50)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES ('dpk', 'singh', 'stranger things s5');

SELECT *
FROM temp_table;

create temporary table salary_over50k
select *
from employee_salary
where salary>=50000;

select * 
from salary_over50k;



with cte_example as(
select gender , avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal, count(salary) as cnt_sal
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id=sal.employee_id
group by gender)
select avg(avg_sal)
from cte_example;

select avg(avg_sal)
from cte_example;


WITH cte_example AS (
    SELECT employee_id, gender, birth_date
    FROM employee_demographics
    WHERE birth_date > '1985-01-01'
),
cte_example2 AS (
    SELECT employee_id, salary
    FROM employee_salary
    WHERE salary > 10000
)
SELECT 
    cte_example.employee_id,
    cte_example.gender,
    cte_example.birth_date,
    cte_example2.salary
FROM cte_example
JOIN cte_example2
ON cte_example.employee_id = cte_example2.employee_id;


with cte_example (gender,avg_sal,max_sal,min_sal,cnt_sal)as(
select gender , avg(salary) , max(salary) , min(salary) , count(salary) 
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id=sal.employee_id
group by gender)
select avg(avg_sal)
from cte_example;
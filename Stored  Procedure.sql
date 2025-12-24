select *
from employee_salary;

select *
from employee_salary
where salary>=50000;


CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary>=50000;


CALL large_salaries();

CALL parks_and_recreation.large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
    FROM employee_salary
    WHERE salary>=50000;
    SELECT *
    FROM employee_salary
    WHERE salary>=10000;
END $$
DELIMITER ;

call large_salaries2();

DELIMITER $$
CREATE PROCEDURE large_salaries4(huggymuffin int)
BEGIN
	SELECT salary
    FROM employee_salary
    WHERE employee_id=huggymuffin;
END $$
DELIMITER ;

call large_salaries4(2);
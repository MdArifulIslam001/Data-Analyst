-- Joins
-- most important thing is that I have to same column name of the both tables.
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- INNER JOIN
SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id =  sal.employee_id
;

-- OUTER JOIN

SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id =  sal.employee_id
;

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id =  sal.employee_id
;

-- self joi
SELECT *
FROM employee_salary as emp1
JOIN employee_salary as emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id = emp2.employee_id
;

-- Joining multiple table

SELECT*
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id =  sal.employee_id
JOIN parks_departments as pd
	on sal.dept_id =  pd.department_id
;

select* -- referrance 
from parks_departments;
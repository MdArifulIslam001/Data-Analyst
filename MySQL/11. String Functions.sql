-- String Functions

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;

SELECT UPPER('sky');
SELECT LOWER('SKY')
;


SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

SELECT RTRIM('       sky     ');


SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2), -- substring(Column name, Start the position, End after the position)
birth_date,
SUBSTRING(birth_date, 6, 2) as birth_month
FROM employee_demographics;


SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

SELECT LOCATE('x', 'Alexander');

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name,'   ' ,last_name) AS Full_Name -- Adding to Column 
FROM employee_demographics;







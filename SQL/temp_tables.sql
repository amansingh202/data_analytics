#Temporary tables

#1st way to create temp table

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(50)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('Aman', 'Kumar', 'Inglorious Bastards');

SELECT * 
FROM temp_table;

#2nd way to create a temporary table
SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM salary_over_50k;



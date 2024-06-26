#WHERE Clause

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = "Leslie";

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary < 50000;

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary<=50000;

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary>=50000;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female';

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01';

# AND OR NOT - - logical operators

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male';

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;


#LIKE statement
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name = "Jer"; #no result in this case
#% and (sign)

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%'; #name starts with alter

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__'; #starts with a and exactly two characters after that

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__%'; #starts with a and may have two characters after that

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1989%'; #born in year 1989

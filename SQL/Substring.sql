#String functions

SELECT length('skyfall') ;#length of string

SELECT first_name, length(first_name) AS size
FROM employee_demographics
ORDER BY size DESC;


SELECT upper('sky');
SELECT lower('SKY');


SELECT first_name, UPPER(first_name)
FROM employee_demographics;

#TRIM (left and right trim remove whitespaces)
SELECT TRIM('            sky           ');
SELECT ('           sky           ');

#lefy trim
SELECT LTRIM('          sky         ');

#right trim
SELECT RTRIM('             sky         ');

SELECT first_name, LEFT(first_name, 4) #4 characters from left side
FROM employee_demographics;

SELECT first_name, RIGHT(first_name, 4) #4 characters from right side
FROM employee_demographics;

#sub string
SELECT first_name, RIGHT(first_name, 4),
LEFT(first_name, 4),
SUBSTRING(first_name, 3, 2),#3 is the indes and 2 is the number of characters
birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month #to extract month only
FROM employee_demographics;

#replace
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

#LOCATE
SELECT LOCATE('x',"Alexander"); #position of the character

SELECT first_name, LOCATE('an', first_name)
FROM employee_demographics;

#CONCAT
SELECT first_name, last_name,
CONCAT(first_name, ' ' ,last_name) AS full_name
FROM employee_demographics;
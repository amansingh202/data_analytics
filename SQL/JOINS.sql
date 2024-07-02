#Joins 
SELECT * FROM Parks_and_Recreation.employee_demographics;

SELECT * FROM Parks_and_Recreation.employee_salary;

SELECT * 
FROM Parks_and_Recreation.employee_demographics 
INNER JOIN Parks_and_Recreation.employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id
;

#Using aliasing
SELECT * 
FROM Parks_and_Recreation.employee_demographics  AS dem
INNER JOIN Parks_and_Recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;
SELECT dem.employee_id, age, occupation 
FROM Parks_and_Recreation.employee_demographics  AS dem
INNER JOIN Parks_and_Recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

#OUTER Joins

#RIGHT JOIN
SELECT *
FROM Parks_and_Recreation.employee_demographics  AS dem
RIGHT OUTER JOIN Parks_and_Recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

#LEFT JOIN
SELECT *
FROM Parks_and_Recreation.employee_demographics  AS dem
RIGHT OUTER JOIN Parks_and_Recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

#SELF JOIN

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_id,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    
    
#JOINING MULTIPLE TABLES TOGETHER
SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id
;

SELECT * 
FROM parks_departments;
#window functions

SELECT *
FROM employee_salary;

#Group by
SELECT gender, AVG(salary) AS avg_salary
FROm employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender;

#Window function
SELECT dem.first_name,dem.last_name, gender,salary,
SUM(salary) 
OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total #cumulative frequency
FROm employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.first_name,dem.last_name, gender,AVG(salary) OVER(PARTITION BY gender)
FROm employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id,dem.first_name,dem.last_name, gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender)
FROm employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

#Rank by salary
SELECT dem.employee_id,dem.first_name,dem.last_name, gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) as rank_num, #give distict value for same salary
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num, #give same value of rank for same salary
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num #give same value of rank for same salary, next number numerically
FROm employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

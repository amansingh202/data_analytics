#CTE (common table expression)

WITH CTE_Example (Gender, Salary, MAX_Salary, MIN_Salary, Count)AS
(
SELECT gender, AVG(salary) AS avg_sal, MAX(salary) max, MIN(salary) min, COUNT(salary) count
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;
#using the same for sub query
SELECT AVG(avg_sal)
FROM (
SELECT gender, AVG(salary) AS avg_sal, MAX(salary) max, MIN(salary) min, COUNT(salary) count
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) AS example_subquery;


WITH CTE_Example AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics
WHERE birth_date > '1980-01-01'
),
CTE_Example2 AS 
(
SELECT *
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
;
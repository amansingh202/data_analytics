#SUB-queries in MYSQL
SELECT *
FROM employee_demographics
WHERE employee_id IN (
	SELECT employee_id
    FROM employee_salary
    WHERE dept_id = 1);

SELECT * 
FROM employee_salary;

SELECT first_name, salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

Select AVG(`MAX(age)`)
FROM (SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS agg_table
;
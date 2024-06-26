#HAVING and WHERE

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 30;

SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%mana%'
GROUP BY occupation
HAVING AVG(salary) > 75000;
#Limit and Aliasing

SELECT *
FROM Parks_and_Recreation.employee_demographics
ORDER BY age DESC
LIMIT 3; #top 3 oldest people

SELECT *
FROM Parks_and_Recreation.employee_demographics
ORDER BY age DESC
LIMIT 2,1; #start at position 2 and 1 row after that

# Aliasing

SELECT gender, AVG(age) AS avg_age
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40;
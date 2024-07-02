#Case statements

#kind of if else statements

SELECT first_name, last_name, age,
CASE
	WHEN age<30 THEN 'Young' 
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >=50 THEN 'near to retirement'
END AS Age_Group
FROM employee_demographics;

#pay increase and bonus
# < 50000 = 5%
# > 50000 = 7%
# Finance = 10% bonus
SELECT first_name, last_name, salary,
CASE
	WHEN salary<50000 THEN salary + (salary * 0.05)
    WHEN salary>50000 THEN salary + (salary * 0.07)
END AS New_Salary,
CASE
	WHEN dept_id = 6 THEN salary + (salary * 0.1)
END AS New_Salary
FROM employee_salary;

SELECT * 
FROM parks_departments;
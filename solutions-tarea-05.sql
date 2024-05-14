--solution 1

SELECT * FROM employees
WHERE rownum <= 20;

--solution 2

SELECT * FROM employees
WHERE salary >= 15000;


--solution 3

SELECT * FROM employees
WHERE salary >= 7500 AND job_id = 'SA_MAN';

--solution 4

SELECT * FROM employees
WHERE job_id = 'IT_PROG'
	OR(manager_id = 121 AND job_id = 'SH_CLERK');


--solution 5

SELECT 
	employee_id,
	first_name,
	last_name,
	salary,
	manager_id,
	department_id
FROM employees
WHERE last_name IN ('King','Austin', 'Faviet', 'Popp', 'Ladwig', 'Seo', 'Rajs');


--solution 6
SELECT 
	department_id
	employee_id,
	first_name,
	last_name
	
FROM employees
WHERE department_id NOT IN (30, 50, 60, 80, 90, 100);

--solution 7

SELECT 
	employee_id,
	UPPER (first_name) AS first_name,
	UPPER (last_name) AS last_name,
    salary
FROM employees
ORDER BY salary DESC;

--solution #1

select a.*, count(b.EMPLOYEE_ID) as COUNT_EMPLOYEES
from DEPARTMENTS a
LEFT OUTER JOIN EMPLOYEES b ON a.DEPARTMENT_ID = b.DEPARTMENT_ID
GROUP BY 
a.DEPARTMENT_ID, a.DEPARTMENT_NAME, a.MANAGER_ID, a.LOCATION_ID
;

--solution #2

select a.LOCATION_ID, a.CITY, b.DEPARTMENT_NAME
from LOCATIONS a
RIGHT OUTER JOIN DEPARTMENTS b ON a.LOCATION_ID = b.LOCATION_ID
ORDER BY a.LOCATION_ID;

--solution #3
--a)
SELECT EMPLOYEE_ID, FIRST_NAME, 
        LAST_NAME, JOB_ID,
        SALARY, DEPARTMENT_ID
FROM EMPLOYEES;

--b)
SELECT a.EMPLOYEE_ID, a.FIRST_NAME, 
        a.LAST_NAME, a.JOB_ID,
        a.SALARY, b.MIN_SALARY, 
        b.MAX_SALARY, a.DEPARTMENT_ID
FROM EMPLOYEES a
LEFT OUTER JOIN JOBS b ON a.JOB_ID = b.JOB_ID;

--c)
SELECT a.EMPLOYEE_ID, a.FIRST_NAME, 
        a.LAST_NAME, a.JOB_ID,
        a.SALARY, b.MIN_SALARY, 
        b.MAX_SALARY, a.DEPARTMENT_ID, c.DEPARTMENT_NAME
FROM EMPLOYEES a
LEFT OUTER JOIN JOBS b ON a.JOB_ID = b.JOB_ID
LEFT OUTER JOIN DEPARTMENTS c ON a.DEPARTMENT_ID = c.DEPARTMENT_ID;

--d)
SELECT a.EMPLOYEE_ID, a.FIRST_NAME, 
        a.LAST_NAME, a.JOB_ID,
        a.SALARY, b.MIN_SALARY, 
        b.MAX_SALARY, a.DEPARTMENT_ID
FROM EMPLOYEES a
LEFT OUTER JOIN JOBS b ON a.JOB_ID = b.JOB_ID
WHERE a.SALARY >= (b.MIN_SALARY *2);


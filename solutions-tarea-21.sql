--solution #1

select distinct a.DEPARTMENT_ID, b.DEPARTMENT_NAME, a.MANAGER_ID
from 
    EMPLOYEES a
    left outer join DEPARTMENTS b on a.DEPARTMENT_ID = b.DEPARTMENT_ID
where a.EMPLOYEE_ID between 100 and 150;

--solution #2

select distinct DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID
from DEPARTMENTS_OLD;

--solution #3

select distinct a.DEPARTMENT_ID, b.DEPARTMENT_NAME, a.MANAGER_ID
from 
    EMPLOYEES a
    left outer join DEPARTMENTS b on a.DEPARTMENT_ID = b.DEPARTMENT_ID
where a.EMPLOYEE_ID between 100 and 150
    UNION ALL
select distinct DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID
from DEPARTMENTS_OLD;

--solution #4

select distinct DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID
from DEPARTMENTS_OLD
    MINUS
select distinct a.DEPARTMENT_ID, b.DEPARTMENT_NAME, a.MANAGER_ID
from 
    EMPLOYEES a
    left outer join DEPARTMENTS b on a.DEPARTMENT_ID = b.DEPARTMENT_ID
where a.EMPLOYEE_ID between 100 and 150;

--solution #5

select distinct DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID
from DEPARTMENTS_OLD
    INTERSECT
select distinct a.DEPARTMENT_ID, b.DEPARTMENT_NAME, a.MANAGER_ID
from 
    EMPLOYEES a
    left outer join DEPARTMENTS b on a.DEPARTMENT_ID = b.DEPARTMENT_ID
where a.EMPLOYEE_ID between 100 and 150;

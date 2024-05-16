--solution #1

create table EM_CUSTOMERS as
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE
from HR.EMPLOYEES
where EMPLOYEE_ID between 120 and 130;
commit;

SELECT * FROM EM_CUSTOMERS;

--solution #2

UPDATE EM_CUSTOMERS
    SET HIRE_DATE = '01.01.2020'
WHERE lower(LAST_NAME) like lower('M%');
commit;

SELECT * FROM EM_CUSTOMERS;

--solution #3

UPDATE EM_CUSTOMERS
    SET LAST_NAME = 'Greene'
WHERE FIRST_NAME like 'Adam' and LAST_NAME like 'Fripp';
commit;

SELECT * FROM EM_CUSTOMERS;

--solution #4

DELETE FROM EM_CUSTOMERS
    WHERE EMPLOYEE_ID > 124;
    commit;
    
    SELECT * FROM EM_CUSTOMERS;

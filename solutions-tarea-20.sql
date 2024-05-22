--solution #1

select 
    LOCATION_ID as LOCATION_ID_SOURCE, CITY
from LOCATIONS 
    where CITY LIKE LOWER('%o%o%');

--solution #2

select 
    DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID
from DEPARTMENTS
    where DEPARTMENT_ID BETWEEN 10 AND 50;

--solution #3

select 
    a.LOCATION_ID as LOCATION_ID_SOURCE, a.CITY, b.*
from 
    (select LOCATION_ID, CITY from LOCATIONS where lower(CITY) like lower('%o%o%')) a
    full outer join (select DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID from DEPARTMENTS 
where DEPARTMENT_ID between 10 and 50) b on a.LOCATION_ID = b.LOCATION_ID;

--solution #4

select 
    a.LOCATION_ID as LOCATION_ID_SOURCE, a.CITY, b.*
from 
    (select LOCATION_ID, CITY from LOCATIONS where lower(CITY) like lower('%o%o%')) a
    full outer join (select DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID from DEPARTMENTS where DEPARTMENT_ID between 10 and 50) b on a.LOCATION_ID = b.LOCATION_ID
order by 
    b.DEPARTMENT_ID asc;

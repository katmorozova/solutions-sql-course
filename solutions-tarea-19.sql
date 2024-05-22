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

/*3. Задание состоит из 4-х последовательных этапов.
а) Из таблицы EMPLOYEES выберите данные только по полям: EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, DEPARTMENT_ID.
б) К результату, полученному на этапе А, добавьте после поля SALARY следующие поля из таблицы JOBS: MIN_SALARY, MAX_SALARY.
в) К результату, полученному на этапе Б, после поля DEPARTMENT_ID добавьте поле DEPARTMENT_NAME из таблицы DEPARTMENTS.
г) Из результата, полученного на этапе В, оставьте только те строки, где фактическая зарплата сотрудника (SALARY) 
в два или более раза превышает минимально возможную зарплату по данной позиции (MIN_SALARY).
*/


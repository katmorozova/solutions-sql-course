--solution #1

SELECT * FROM employees
  WHERE EMAIL LIKE '%AV%';

--solution #2

SELECT * FROM employees
  WHERE JOB_ID LIKE '%CLERK' AND LAST_NAME LIKE 'B%';

--solution #3

SELECT distinct TABLE_NAME FROM user_tab_columns
WHERE COLUMN_NAME LIKE '%EMPLOYEE';

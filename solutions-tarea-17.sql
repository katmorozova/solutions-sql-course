--solution #1

SELECT a. * FROM EMPLOYEES a
INNER JOIN JOBS_TEST b ON a.JOB_ID = b.JOB_ID;

--solution #2

SELECT a.*
FROM EMPLOYEES a
INNER JOIN JOBS_TEST b ON a.JOB_ID = b.JOB_ID
where b.JOB_TITLE like('%Sales%');

--solution #3

SELECT a.*, c.DEPARTMENT_NAME
FROM EMPLOYEES a
INNER JOIN JOBS_TEST b ON a.JOB_ID = b.JOB_ID
INNER JOIN DEPARTMENTS c ON a.DEPARTMENT_ID = c.DEPARTMENT_ID
where b.JOB_TITLE like('%Sales%');
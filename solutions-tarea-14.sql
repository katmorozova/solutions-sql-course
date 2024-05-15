--solution #1

create table EM_EMPLOYEES(
    employee_id   number,
    employee_name   varchar2(15),
    employee_surname   varchar2(15),
    department   varchar2(15));

create table EM_DEPARTMENTS(
    department_id   number,
    department_name   varchar2(15),
    city   varchar2(15));

--solution #2

alter table EM_EMPLOYEES rename to EM_EMPLOYEES_SPAIN;

SELECT * FROM EM_EMPLOYEES;
SELECT * FROM EM_EMPLOYEES_SPAIN;


alter table EM_DEPARTMENTS rename to EM_DEPARTMENTS_SPAIN;

SELECT * FROM EM_DEPARTMENTS;
SELECT * FROM EM_DEPARTMENTS_SPAIN;

--solution #3

drop table EM_EMPLOYEES_SPAIN;

drop table EM_DEPARTMENTS_SPAIN purge;

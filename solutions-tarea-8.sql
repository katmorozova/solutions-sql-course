--solution #1

SELECT DEPARTMENT_NAME FROM departments
  WHERE manager_id IS NULL;

--solution #2
SELECT DEPARTMENT_NAME FROM departments
  WHERE manager_id IS not NULL;

--solution #3
SELECT DEPARTMENT_NAME, NVL(manager_id, 999)AS manager_id FROM departments
  WHERE department_id IN (10, 50, 120, 200);

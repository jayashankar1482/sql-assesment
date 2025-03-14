select department_id,COUNT(*) AS total_employees
FROM employees 
GROUP BY department_id


select depaertment_id,AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;


select department_id,MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
GROUP BY depaertment_id;



select department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

select job_id, COUNT(*) AS total_employees
from employees
GROUP BY job_id;


select job_id,avg(salary) AS avg_salary
FROM employees
GROUP BY job_id;



SELECT job_id,MAX(salary) AS max_salary
FROM employees
GROUP BY job_id;



select job_id,MIN(salary) AS min_salary
from employees
GROUP BY job_id;


select job_id,SUM(salary) AS total_salary
FROM employees
GROUP BY job_id;


SELECT EXTRACT(YEAR FROM hire_date) as hire_year, COUNT(*) AS total_employees
FROM employees
GROUP BY EXTRACT(YEAR FROM hire_date)
ORDER BY hire_year;


select d.location_id, SUM(e.salary) AS total_salary
FROM employees e
Join departments d ON e.department_id = d.department_id
GROUP BY d.location_id;


SELECT manager_id, COUNT(*) AS team_Size
FROM employees
where manager_id IS NOT NULL
GROUP BY manager_id;


select manager_id,MAX(salary) AS max_salary
FROM employees
where manager_id is not NULL
GROUP BY manager_id;

SELECT manager_id, AVG(salary) AS avg_salary
FROM employees
where manager_id IS NOT NULL
GROUP BY manager_id;

SELECT EXTRACT(MONTH FROM hire_date) AS hire_month, COUNT(*) AS total_hired
FROM employees
GROUP BY EXTRACT(MONTH FROM hire_date)
ORDER BY hire_month;


select depaertment_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
ORDER BY total_salary DESC
FETCH FIRST 1 ROW ONLY;



SELECT job_id, AVG(salary) AS avg_salary
FROM employees 
GROUP BY job_id
ORDER BY avg_salary DESC
FETCH FIRST 1 ROW ONLY;

SELECT 1.city, COUNT(*) AS total_employees
FROM employees e
JOIN departments d ON e.department_id=d.department_id
JOIN locations 1 ON d.location_id=1.location_id
group by 1.city;


select department_id, COUNT(*) AS employees_with_commission
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;



SELECT department_id, SUM(salary) AS total_salary_with_commission
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;

























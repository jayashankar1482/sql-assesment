--1.count the number of employees in each departments
--this query groups employees by department_id and counts how many employees exist in each

select department_id,COUNT(*) AS total_employees
FROM HR.employees 
GROUP BY department_id

--2.Find the average salary in each department
-- This query calculates the average salary for employees in each department.

SELECT department_id, AVG(salary) AS avg_salary
FROM HR.employees
GROUP BY department_id;


--3. Find the maximum and minimum salary in each department
-- This query finds the highest and lowest salaries for each department.

select department_id,MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM HR.employees
GROUP BY depaertment_id;






-- 1. Count the number of sales transactions for each product.  

select PROD_ID, COUNT(*) as transaction_count
FROM SH.sales
GROUP BY PROD_ID;

--2. Find the average sale amount for each product.

select PROD_ID, AVG(Quantity_sold) as average_quantity_sold
FROM SH.sales
GROUP BY PROD_ID;


-- 3. Find the maximum and minimum sale amount for each product.  
 
select PROD_ID, 
MAX(amount_sold) as max_sale_amount, 
MIN(amount_sold) as min_sale_amount
FROM SH.sales
GROUP BY PROD_ID;

-- 4. Find the total revenue generated by each product.  

select PROD_ID,
sum(amount_sold*Quantity_sold) as total_revenue
from SH.sales
group by PROD_ID;

-- 5. Count the number of sales transactions for each customer.  
select CUST_ID, count(*) as transaction_count
FROM SH.SALES
GROUP BY CUST_ID;

-- 6. Find the average sale amount per customer.  

select CUST_ID, avg(amount_sold) as avg_sale_amount
FROM SH.SALES
GROUP BY CUST_ID;

-- 7. Find the highest purchase amount for each customer.  

select CUST_ID, MAX(AMOUNT_SOLD) as highest_purchase_count
FROM SH.sales
GROUP BY CUST_ID;

-- 8. Find the lowest purchase amount for each customer.  

SELECT CUST_ID, MIN(AMOUNT_SOLD) as lowest_purchase_count
from SH.sales
GROUP BY CUST_ID




--4. Find the total salary paid in each department
-- This query sums up all employee salaries in each department.

select department_id, SUM(salary) AS total_salary
FROM HR.employees
GROUP BY department_id;


-- 5. Count the number of employees in each job role
-- This query counts the number of employees who have the same job role.

select job_id, COUNT(*) AS total_employees
from HR.employees
GROUP BY job_id;

-- 6. Find the average salary for each job role
-- This query calculates the average salary for employees in each job role.

select job_id,avg(salary) AS avg_salary
FROM HR.employees
GROUP BY job_id;

-- 7. Find the maximum salary for each job role
-- This query finds the highest salary assigned to employees for each job role.

SELECT job_id,MAX(salary) AS max_salary
FROM HR.employees
GROUP BY job_id;

-- 8. Find the minimum salary for each job role
-- This query finds the lowest salary assigned to employees for each job role.


select job_id,MIN(salary) AS min_salary
from HR.employees
GROUP BY job_id;

-- 9. Find the total salary paid for each job role
-- This query calculates the total salary payout for employees in each job role.

select job_id,SUM(salary) AS total_salary
FROM HR.employees
GROUP BY job_id;

-- 10. Count the number of employees hired in each year
-- This query extracts the year from the hire_date and counts employees hired in each year.

SELECT EXTRACT(YEAR FROM hire_date) as hire_year, COUNT(*) AS total_employees
FROM HR.employees
GROUP BY EXTRACT(YEAR FROM hire_date)
ORDER BY hire_year;

-- 11. Find the total salary paid in each location
-- This query sums up the total salary per location by joining employees with department locations.

select d.location_id, SUM(e.salary) AS total_salary
FROM HR.employees e
Join departments d ON e.department_id = d.department_id
GROUP BY d.location_id;

-- 12. Find the number of employees in each manager's team
-- This query counts the employees who report to each manager.

SELECT manager_id, COUNT(*) AS team_Size
FROM HR.employees
where manager_id IS NOT NULL
GROUP BY manager_id;

-- 13. Find the highest salary for each manager
-- This query finds the highest salary among employees reporting to each manager.

select manager_id,MAX(salary) AS max_salary
FROM HR.employees
where manager_id is not NULL
GROUP BY manager_id;

-- 14. Find the average salary for each manager's team
-- This query calculates the average salary of employees reporting to each manager.

SELECT manager_id, AVG(salary) AS avg_salary
FROM HR.employees
where manager_id IS NOT NULL
GROUP BY manager_id;


-- 15. Count the number of employees hired in each month of the year
-- This query extracts the month from hire_date and counts how many employees were hired in each month.

SELECT EXTRACT(MONTH FROM hire_date) AS hire_month, COUNT(*) AS total_hired
FROM HR.employees
GROUP BY EXTRACT(MONTH FROM hire_date)
ORDER BY hire_month;

-- 16. Find the department with the highest total salary
-- This query finds the department that pays the highest total salary by sorting in descending order.

select depaertment_id, SUM(salary) AS total_salary
FROM HR.employees
GROUP BY department_id
ORDER BY total_salary DESC
FETCH FIRST 1 ROW ONLY;


-- 17. Find the job role with the highest average salary
-- This query finds the job role with the highest average salary by sorting in descending order.

SELECT job_id, AVG(salary) AS avg_salary
FROM HR.employees 
GROUP BY job_id
ORDER BY avg_salary DESC
FETCH FIRST 1 ROW ONLY;


-- 18. Find the number of employees in each city
-- This query counts the number of employees per city, assuming departments are linked to locations.

SELECT 1.city, COUNT(*) AS total_employees
FROM HR.employees e
JOIN departments d ON e.department_id=d.department_id
JOIN locations 1 ON d.location_id=1.location_id
group by 1.city;


-- 19. Find the number of employees who have a commission, grouped by department
-- This query counts employees who receive a commission, grouped by department.

select department_id, COUNT(*) AS employees_with_commission
FROM HR.employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;


-- 20. Find the sum of salaries for employees who have a commission, grouped by department
-- This query sums up the salaries of employees who receive a commission, grouped by department.

select department_id, SUM(salary) AS total_salary_with_commission
FROM HR.employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;

























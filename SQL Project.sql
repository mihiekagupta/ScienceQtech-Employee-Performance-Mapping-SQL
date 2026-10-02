create database employee;
use employee;
select * from data_science_team;
select * from emp_record_table;
select * from proj_table;
/* 3.	Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee record table, and
 make a list of employees and details of their department.*/
SELECT 
    EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT
FROM
    emp_record_table;
    /* 4.	Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if the EMP_RATING is: 
●	less than two
●	greater than four 
●	between two and four */
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT,EMP_RATING from emp_record_table where EMP_RATING<2;
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT,EMP_RATING from emp_record_table where EMP_RATING>4;
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT,EMP_RATING from emp_record_table where EMP_RATING between 2 and 4;
/* 5.	Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department
 from the employee table and then give the resultant column alias as NAME. */
 SELECT 
    FIRST_NAME,
    LAST_NAME,
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS NAME
FROM
    emp_record_table
WHERE
    dept = 'Finance';
    /* 6.	Write a query to list only those employees who have someone reporting to them. 
    Also, show the number of reporters (including the President). */
    SELECT 
    MANAGER_ID, COUNT(EMP_ID)
FROM
    emp_record_table
WHERE
    MANAGER_ID IS NOT NULL
GROUP BY MANAGER_ID;
/* 7.	Write a query to list down all the employees from the healthcare and finance departments using union. 
Take data from the employee record table. */
select * from emp_record_table where dept="Healthcare"
union
select * from emp_record_table where dept="Finance";

/* 8.	Write a query to list down employee details such as EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPARTMENT, and EMP_RATING grouped by dept.
 Also include the respective employee rating along with the max emp rating for the department. */
 select EMP_ID,FIRST_NAME,LAST_NAME,ROLE,DEPT,EMP_RATING,MAX(EMP_RATING)
 over (partition by dept) as Maximum_Rating from emp_record_table;
 
-- 9.	Write a query to calculate the minimum and the maximum salary of the employees in each role. Take data from the employee record table.
 SELECT 
    role, MIN(salary) AS Minimum_sal, MAX(salary) AS Maximum_sal
FROM
    emp_record_table
GROUP BY role;

-- 10.	Write a query to assign ranks to each employee based on their experience. Take data from the employee record table.
select * , rank() over (order by exp desc) as Rnk from emp_record_table;

/* 11.	Write a query to create a view that displays employees in various countries
 whose salary is more than six thousand. Take data from the employee record table. */
 create view emp_country as (select * from emp_record_table where salary>6000);
 select * from emp_country;
 
 -- 12.	Write a nested query to find employees with experience of more than ten years. Take data from the employee record table.
 select * from emp_record_table where emp_id in (select EMP_ID from emp_record_table where exp>10);
 
-- 15. 
describe emp_record_table;

alter table emp_record_table modify first_name varchar(50);
describe emp_record_table;
create index id_first_name on emp_record_table(first_name);
select * from emp_record_table where first_name="Eric";
 
-- 16. 
select *,(0.05 *salary *EMP_RATING) as bonus from emp_record_table;

-- 17. 
SELECT 
    continent, country, AVG(salary)
FROM
    emp_record_table
GROUP BY continent , country;



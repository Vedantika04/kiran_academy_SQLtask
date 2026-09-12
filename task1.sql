-- part A

create database company_db;
use company_db;
create table  employees ( 
employee_id int primary key, 
employee_name varchar(100),
department varchar(50),
salary decimal(10,2),
city varchar(50),
joining_date date,
status varchar(20)
);
DESC employees; 
show tables;

-- part B

insert into employees values 
(101, 'Rahul Patil', 'Development', 45000, 'Pune', '2026-01-10', 'Active'),
(102, 'Priya Sharma', 'Testing', 38000, 'Mumbai', '2026-02-15', 'Active'),
(103, 'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active'),
(104, 'Sneha Kulkarni', 'HR', 35000, 'Nashik', '2026-03-20', 'Active'),
(105, 'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive'),
(106, 'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12', 'Active');

-- part C --

select * from employees;
select employee_name from employees;
select employee_name,salary from employees;
select employee_name,department,city from employees; 
select * from employees where city='pune';
select * from employees where city='mumbai';
select * from employees where department='development';
select * from employees where department='testing';
select * from employees where status='active';
select * from employees where status='inactive'; 
select * from employees where employee_id=103;
select * from employees where employee_name='priya sharma';
select * from employees where salary>40000;
select * from employees where salary<40000;
select * from employees where salary=35000;
select * from employees where salary>=42000; 
select * from employees where city='pune' and status= 'active';
select * from employees where department='development' and salary>45000;
select * from employees where city='pune' or city='mumbai';

-- part D --

SET SQL_SAFE_UPDATES = 0; -- for safe mode off 

update employees
set salary=48000
where employee_name='rahul patil';
 
update employees
set status='Active'
where employee_name='rohan deshmukh';

update employees
set city='pune'
where employee_name='sneha kulkarni';

update employees
set department='development'
where employee_name='priya sharma';

update employees
set salary=45000
where employee_id=106;

update employees
set salary=salary + 3000
where employee_id=103;

update employees
set salary =salary + 2000
where department='testing';

update employees
set city='Mumbai Branch'
where city='mumbai';

-- part E --

delete from employees
where employee_id=105;

delete from employees
where employee_name='rohan deshmukh';

delete from employees
where status='inactive';

delete from employees
where salary<30000;

delete from employees
where employee_id=104;

-- part F --

alter table employees
add email varchar(100);

alter table employees
add mobile varchar(15);

alter table employees
modify city varchar(100);

alter table employees
rename column employee_name to name;

alter table employees
drop column mobile;

alter table employees
add column experience int;

update employees
set experience=4
where employee_id=101;

-- part G --

create table departments (
department_id int primary key,
department_name varchar(100),
location varchar(100)
);

insert into departments values
(1,'product managemant','pune'),
(2,'sales department','satara'),
(3,'Human Resources','Mumbai');

select * from departments;

update departments
set location='bangolore'
where department_id=3;

delete from departments
where department_id=2;

alter table departments
rename to company_departments;

DESC company_departments;

truncate company_departments;

drop table company_departments;

show tables;










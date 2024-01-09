create database payroll_service;
use payroll_service;

show databases;

create table employee_payroll
(id int auto_increment primary key,
name varchar(20),
salary int(10),
startDate date);

drop table employee_payroll;

select*from employee_payroll;
desc employee_payroll;

insert into employee_payroll(name,salary,startDate)values
('asish',100000,'2020-09-19'),
('kumar',200000,'2019-07-19'),
('dash',300000,'2021-12-07');

select salary from employee_payroll where name='kumar';

select*from employee_payroll where startDate between cast('2020-01-01' as date)and date(now());

delete from employee_payroll where name='asish';

insert into employee_payroll(name,salary,startDate)values
('asish',100000,'2020-09-19');

alter table employee_payroll add gender varchar(1) after name;

update `payroll_service`.`employee_payroll` set `gender` = 'M' where (`id` = '2');
update `payroll_service`.`employee_payroll` set `gender` = 'F' where (`id` = '3');
update `payroll_service`.`employee_payroll` set `gender` = 'M' where (`id` = '4');

select sum(salary)from employee_payroll where gender='M' group by gender;

select count(gender)from employee_payroll where gender='M';

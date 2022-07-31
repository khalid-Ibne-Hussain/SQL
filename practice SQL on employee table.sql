-- this is practice task

show databases;
use intro_sql;

create table employee(
first_name varchar(20),
last_name varchar(20),
age int,
position varchar(30),
salary float
);
drop table employee;
select count(*) from employee;

insert into employee values('Jonie','Weber',28,'Secretary',19500.00);
insert into employee values('Potsy','Weber',32,'Programmer',45300.00);
insert into employee values('Dirk','Smith',45,'Programmer II',75020.00);
insert into employee values('Solid','Liquid',23,'Data Science',40000.00);
insert into employee values('Abul','Mia',30,'Data Analyst',35000.00);
insert into employee values('Babul','Mia',40,'Data Engineer',38000.00);
insert into employee values('Momen','Khan',43,'Deep Learning',48000.00);
insert into employee values('Nahid','Vai',35,'Software Engineer',32000.00);

select * from employee;
select * from employee where salary>30000;
select first_name,last_name from employee where age<30;
select first_name,last_name,salary from employee where position = 'Programmer';
-- or
select first_name,last_name,salary from employee where position like 'Programmer';
select * from employee where last_name like '%qu%';
select first_name from employee where first_name='Potsy';
select * from employee where age > 40;
select * from employee where last_name like '%ith';

SET SQL_SAFE_UPDATES = 0; /*-- we are practicing in local machine so set value is 0*/

-- UPDATE
update employee set position = 'Data Scientist' where first_name = 'abul';
update employee set age=45,salary=50000.00, position = 'Neural Network' where first_name='Momen';

-- DELETE
delete from employee where position='programmer II'; /*delete the row from the table*/
delete from employee; /*delete the table value only not the table*/
select * from employee;
-- DROP
drop table employee; /*drop table means delete the table from the database */

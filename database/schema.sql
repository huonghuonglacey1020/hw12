create database employee_db;
use employee_db;
create table department (
id int auto_increment PRIMARY KEY,
name varchar(30) not null);

create table role (
id int auto_increment PRIMARY KEY,
title varchar(30) not null, 
salary decimal UNSIGNED not null,
department_id int unsigned not null);
create table employee (
id int auto_increment PRIMARY KEY,
first_name varchar(30) not null,
last_name varchar(30) not null,
manager_id int unsigned not null
);
select * from department;
select * from role;
select * from employee;
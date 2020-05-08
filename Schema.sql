DROP DATABASE IF EXISTS employee_db;

 CREATE DATABASE employee_db;
use employee_db;
show create table employee;
drop  database;
 CREATE TABLE department (
	id INT unsigned AUTO_INCREMENT primary key,
     name VARCHAR(30) unique NOT NULL 
  
 );

 CREATE TABLE role (
	id INT unsigned AUTO_INCREMENT primary key,
    title VARCHAR(30) unique NOT NULL,
     salary DECIMAL unsigned NOT NULL,
   department_id INT unsigned NOT NULL,
  INDEX dep_ind (department_id),
  
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);
CREATE TABLE employee (
 	id INT unsigned AUTO_INCREMENT primary key,
    
    
     first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    INDEX role_ind(role_id),
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) on DELETE CASCADE,
    manager_id INT unsigned,
    INDEX man_ind (manager_id), 
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) on DELETE set null
  
);


use employee_db;



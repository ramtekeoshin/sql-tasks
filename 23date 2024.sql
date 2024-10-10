create table employee_details1(EmployeeID serial primary key,FirstName varchar(50) not null,LastName varchar(50) unique,
Email varchar(100) not null,
PhoneNumber bigint not null,
HireDate date not null,
Salary decimal(10,2) check(Salary>1),
DepartmentID int not null,
Is_Active boolean default true,
JobTitle varchar(100) unique
 );

insert into employee_details1(FirstName,LastName,Email,PhoneNumber,HireDate,Salary,DepartmentID,Is_Active,JobTitle) values ('megha','maholtra','megha1@gmail.com',74373646466,'2023-06-13',12345678.32,6,'false','Btech');

copy employee_details1 from 'D:/excel task/employee_details1' delimiter ',' csv header;

update employee_details1 set "departmentid" = 0 where "is_active" = 'false';

update employee_details1 set "salary" = salary+salary*0.08 where "is_active" = 'false'and "departmentid" = 0 and "jobtitle" in ('HR Manager','Business Analyst','Financial Analyst','Data Analyst');

select firstname as name, lastname as surname from employee_details1 where "salary" between 30000 and 50000;

select * from employee_details1 where "firstname" like 'A%';

delete from employee_details1 where "employeeid" between 1 and 5; 
create table products (product_id serial primary key,product_name varchar(20) not null,category varchar(20),
	price int,stock_quantity int,supplier_name varchar(20) not ,supplier_city varchar(20),supply_date date)

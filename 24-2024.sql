alter table employee_details1 rename to employee_database;

alter table employee_details1 rename column firstname to name;
alter table employee_details1 rename column  lastname to surname;

alter table employee_details1 add column state varchar not null;

update employee_details1 set state = 'india'  where is_active = true;

update employee_details1 set state = 'USA ' where is_active = False;
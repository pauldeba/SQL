-- creating database 
create database Debashis_Activities;
-- creating salesman table
create table salesman(salesman_id int primary key,name varchar(20),city varchar(20), commision int);
-- describe the table
describe salesman;

-- Activity two
-- Inser data into table
insert into salesman (salesman_id,Name,city,commision) values(5001,'James Hoog','New York',15),(5002,'Nail Knite','Paris',13),
(5005,'Pit Alex','London',11),(5006,'McLyon','Paris',14),(5007,'Paul Adam','Rome',13),(5003,'Lauson Hen','San Jose',12);

-- select statement
select * from salesman;

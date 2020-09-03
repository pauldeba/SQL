-- Create the customers table
create table Debashis_Activities.customers (customer_id int primary key, customer_name varchar(32),city varchar(20), grade int, salesman_id int);

-- Insert values into it
insert into Debashis_Activities.customers values 
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);

select * from Debashis_Activities.customers;
select * from Debashis_Activities.salesman;
select * from Debashis_Activities.orders;
-- Write an SQL statement to know which salesman are working for which customer.
select a.customer_id as "Customer Id", a.customer_name as "Customer Name", a.city, b.name as "Salseman", b.commision 
from Debashis_Activities.customers a inner join Debashis_Activities.salesman b on a.salesman_id = b.salesman_id;
-- select customer_id, customer_name, salesman_id from Debashis_Activities.customers where salesman_id in (select salesman_id from Debashis_Activities.salesman);

-- Write an SQL statement to make a list in ascending order for the customer who holds a grade less than 300 and works either through a salesman.
select a.customer_id, a.customer_name, a. grade, b.name as "Salseman",b.city from Debashis_Activities.customers a 
left outer join Debashis_Activities.salesman b on a.salesman_id=b.salesman_id where a.grade<300 order by a.customer_id asc;

-- Write an SQL statement to find the list of customers who appointed a salesman for their jobs who gets a commission from the company is more than 12%.
select a.customer_name as "Customer Name",a.city, b.name as "Salseman", b.commision from Debashis_Activities.customers a 
inner join Debashis_Activities.salesman b on a.salesman_id = b.salesman_id where b.commision>12;

-- Write an SQL statement to find the details of a order i.e. order number, order date, amount of order, 
-- which customer gives the order and which salesman works for that customer and commission rate he gets for an order.
SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name AS "Customer Name", b.grade, c.name AS "Salesman", c.commision FROM Debashis_Activities.orders a 
INNER JOIN Debashis_Activities.customers b ON a.customer_id=b.customer_id 
INNER JOIN Debashis_Activities.salesman c ON a.salesman_id=c.salesman_id;
select * from Debashis_Activities.orders;

-- Write an SQL statement to find the total purchase amount of all orders.
select sum(purchase_amount) as Total from Debashis_Activities.orders;

-- Write an SQL statement to find the average purchase amount of all orders.
select avg(purchase_amount) As Avarage from Debashis_Activities.orders;

-- Write an SQL statement to get the maximum purchase amount of all the orders.
select max(purchase_amount) as Maximum from Debashis_Activities.orders;

-- Write an SQL statement to get the minimum purchase amount of all the orders.
select min(purchase_amount) as minimum from Debashis_Activities.orders;

-- Write an SQL statement to find the number of salesmen listed in the table.
select count(distinct(salesman_id)) as number_of_salesman from Debashis_Activities.orders;
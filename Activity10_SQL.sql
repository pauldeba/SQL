select * from Debashis_Activities.customers;
select * from Debashis_Activities.salesman;
select * from Debashis_Activities.orders;

-- Write a query to find all the orders issued against the salesman who may works for customer whose id is 3007.
-- salesman who may works for customer whose id is 3007
-- select salesman_id from Debashis_Activities.customers where customer_id=3007;
-- Subquery
select * from Debashis_Activities.orders where salesman_id = (select distinct salesman_id from Debashis_Activities.customers where customer_id=3007);

-- Write a query to find all orders attributed to a salesman in New York.
-- select salesman_id from Debashis_Activities.salesman where city ='New York';
select * from Debashis_Activities.orders where salesman_id in (select salesman_id from Debashis_Activities.salesman where city ='New York');

-- Write a query to count the customers with grades above New York's average.
SELECT grade, COUNT(*) FROM Debashis_Activities.customers GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM Debashis_Activities.customers WHERE city='New York');

-- Write a query to extract the data from the orders table for those salesman who earned the maximum commission
SELECT order_no, purchase_amount, order_date, salesman_id FROM Debashis_Activities.orders
WHERE salesman_id IN( SELECT salesman_id FROM Debashis_Activities.salesman
WHERE commision=( SELECT MAX(commision) FROM Debashis_Activities.salesman));
-- Add a new column - grade - to the salesman table. The grade will be integer values.
alter table Debashis_Activities.salesman add grade int;

-- Set the value in the grade column for everyone to 100.
update Debashis_Activities.salesman set grade=100;

-- Use SELECT command to display the results.

select * from Debashis_Activities.salesman;

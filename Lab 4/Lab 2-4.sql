--1- get cities of agents booking order for a customer whose cid is 'c002'

select 	city 
from 	agents
where 	aid in	(select aid 
		from orders 
		where cid = ('c002')
		);
		
--2- ids of products ordered from agent who has one order from dallas, sorted pid High to Low

select pid
from orders 
where cid in	(select cid 
		from customers
		where city = 'Dallas')
		order by pid ASC;
		
		
--3- ids & names of customers who didn't place order through agent a01

select cid, name
from customers
where cid in 	(select cid 
		from orders
		where aid <>'a01');


--4- ids of customer who ordered product p01 and p07


select cid, name 
from customers 
where cid in 	(select cid from orders 
		where pid = 'p01' and cid in (select cid from products 
		where pid = 'p07'));

	
--5- ids of products not ordered by any customers who placed order through agent a07 in pid; order from high to low

select pid 
from orders
where aid in 	(select aid from orders
		where aid = 'a07')
		order by pid DESC;


--There is no agent 7, therefore, the query results in no information appearing in the output screen.


--6- name, discounts and city for customers who place orders through agents in london or New York


select name, discount 
from customers
where cid in 	(select cid from orders 
		where aid in (select aid from agents 
		where city = 'London' or city = 'New York'));
	 
--7- customers who have same discount in dallas or london


select cid, name 
from customers 
where ((discount = 12.00 or discount = 8.50) and (city = 'Dallas')) or ((discount = 0) and (city = 'London'))


--8- W3schools.com states "Check constraints are used to limit the value range that can be placed in a column."
--If you were to define a check constraint on a single column it will allow only specific values fro this column.
--Defining a check constraint on a table limits the values in certain columns based on values in other columns of that row.
--Essentially, a check constraint is put in place to ensure data integrity, and so that data is stored properly without duplication or error. 
--An example of good check constraints would be limiting input errors. 
--For example using the Cap3 database, a user should not be allowed to input the value of '-1.00' into the "customers.discount" column.
--Doing so would invalidate the table and make the database useless searching for a customer name that is actually the value of a discount.
--In this case since the table is already created we can use the following check cosntraint:
--			ALTER TABLE Customers
--			ADD CHECK (customers.discount > 0)
--An example of a bad check constraint would be not allowing a hyphen in the name column as a customer may have a hyphenated name.

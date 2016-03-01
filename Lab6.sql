--Andrew Rokoszak
--Lab 6- Interesting and Painful Queries

--1-display name and city of customers who live in any city that make the most different products

select customers.name, products.city
from customers, products
where customers.city = products.city
AND products.city in (select city
			from products
			group by products.city
			order by count (products.city)DESC
			Limit 1)

Group by customers.name, products.city
Order by customers.name, products.city;

--2- display the names of products whose priceUSD is strictly above the avergae priceUSD, in reverse alphabetical order

select name
from products
where priceUSD > (select AVG(priceUSD) 
		  from products)
Group by products.name
Order by products.name DESC;

--3-display customer name, pid ordered, and the total for all others, sorted by total from high to low

select customers.name, orders.pid, orders.totalUSD
from customers, orders
where customers.cid = orders.cid

Group by customers.name, orders.pid, orders.totalUSD
Order by orders.totalUSD DESC;

--4-display all customer names and their total ordered

select customers.name, coalesce(sum(orders.qty),0) as "total" 
from customers, orders
where customers.cid = orders.cid 

Group by customers.name 
Order by customers.name ASC;

--Is weyland supposed to appear if Null?



--5-display the names of all customers who bought products based in Tokyo along with the names of products and agents

select customers.name, products.name, agents.name
from customers, products, orders, agents
where orders.pid = products.pid 
	AND orders.aid = agents.aid
	AND orders.cid =customers.cid
	AND agents.city = 'Tokyo';

--6-write a query to check accuracy of dollars column in orders table

select orders
from orders, products, customers
where orders.pid = products.pid
AND orders.cid = customers.cid
AND orders.qty * products.priceUSD * ((100-customers.discount)/100) <> orders.totalUSD;

--7-In a left outer join, every one of the rows from the "left" table will be displayed, no matter whether or not there are any matching columns in the "right" table. For a right outer join it is all of the rows of the right table will be displayed, even if there are no matching columns in the "left" table. 

--Example Queries: 

select * 
from customers 
left outer join agents on customers.city = agents.city;

select * 
from customers 
right outer join agents on customers.city = agents.city;





		    
		  

-- Query 1-order number and total dollars of all orders
select ordnum, totalUSD
from orders;

-- Query 2-name of city of agents named Smith
select name, city
from agents
where name ='Smith';


-- Query 3-list id, name and priceUSD of products w/ quantity greater than 208,000
select pid, name, priceUSD
from products
where quantity > 208000;


-- Query 4-list the names and cities of customers in Dallas
select name, city
from customers
where city ='Dallas';


-- Query 5-names of agents not in New York or Tokyo
select * 
from agents
where city <> 'New York' 
  and city <> 'Tokyo';


-- Query 6-all data for products not in Dallas or Duluth that cost $1 or more
select *
from products
where city <> 'Dallas' 
  and city <> 'Duluth'
  and priceUSD >= 1;


-- Query 7-all data for orders in January or March
select *
from orders
where mon = 'jan' 
   or mon = 'mar';


-- Query 8-List all data for orders in Febryary less than us$500
select *
from orders 
where mon = 'feb'
and totalUSD < 500;

-- Query 9-all orders from the customer whose cid is C005
select *
from orders
where cid = 'C005';


SELECT * FROM orders;

-- show all order details incl. customer name
select name, date,total 
  from orders o
  join customer c
    on c.id = o.customerID
 order by name;

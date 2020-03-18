SELECT * FROM customer;
select * from customer
 where state = 'OH'
   and creditlimit >= 500000
 order by name desc;
select * from customer
 where state != 'OH';
select * from customer
 where state in ('OH', 'IN');
select name, city, state, isCorpAcct as 'Corp?'
  from customer;

 
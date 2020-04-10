select * from user;
insert into user
(UserName, Password, FirstName, LastName, PhoneNumber, 
        Email, IsReviewer, IsAdmin)
  values ('dummy', 'pwd', 'dummy', 'd', '111-111-1111',
          'dummy@test.com', 0, 1);
select * from user
 where id = 3;
 select * from vendor;
 
 select * from product;
 
 update user
 set lastname = 'Dummerson'
  where id = 4;
  
  delete from user
   where id = 4;
  
  select * from request;
  select * from product;
   insert into request (userid, description, justification, dateneeded, deliverymode, total)
     values (2,'Guitars for tour', "Can't rock out without guitars!", '2020-05-01', 'pick-up',0);

select * from lineitem;
insert into lineitem (requestid, productid, quantity)
 values (1,14,2),
        (1,15,1);
        
-- 3 table join user - request - line item
select u.FirstName, u.lastname, description, justification, 
			p.name as 'product name', p.price, quantity
  from request r
  join lineitem li
    on r.id = li.RequestId
  join user u
    on u.id = r.userid
  join product p
    on p.id = li.productid;

  
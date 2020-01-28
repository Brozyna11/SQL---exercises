select last_name, first_name
from customer
where first_name = 'Jamie' AND last_name = 'Rice';

SELECT email FROM CUSTOMER
WHERE first_name = 'Jared';

select * from payment
where amount  <> 7.99;

select amount,payment_date from payment
where amount = 4.99 or amount = 1.99;
-- <,>,<>, !=, <=, >=
-- and, or, if, 

select * from customer; 

select email from customer
where first_name = 'Nancy' and last_name = 'Thomas';

select description from film where title = 'Outlaw Hanky';

select phone from address
where address = '259 Ipoh Drive';


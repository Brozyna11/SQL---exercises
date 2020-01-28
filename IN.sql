select customer_id, rental_id, return_date
from rental
where customer_id in (1,2,20,16)

select * from payment
limit 1;

select * from payment
where amount in (7.99,8.99);
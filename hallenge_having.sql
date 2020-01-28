-- CHALLENGE
select customer_id,count(payment_id) from payment
group by customer_id
having count(payment_id) >= 40 ;

select rating, avg(rental_duration)
from film
group by rating
having avg(rental_duration) > 5; 
-- ASSESMENT
select customer_id,sum(amount)
from payment
where staff_id = 2 
group by customer_id
having sum(amount) >= 110;
--
select count(title) from film
where  title ilike 'j%';
--
select customer_id,first_name, last_name from customer
where first_name ilike 'E%' and address_id < 500
order by customer_id desc
limit 1;

select * from payment;

select staff_id, COUNT(payment_id)
from payment
group by staff_id;

select staff_id, count(*)
from payment
group by staff_id;

select * from film
limit 5;

select rating, count(rating) from film
group by rating;

select * from film
limit 1;

select rental_duration, count(rental_duration) from film
group by rental_duration;
 
select rating, round(avg(rental_rate),2)
from film
group by rating;

select * from payment limit 2;

select staff_id, count(*),sum(amount)
from payment
group by staff_id;

select * from film;

select rating, round(avg(replacement_cost),2) from film
group by rating;

select customer_id, sum(amount) from payment
group by customer_id
order by sum(amount) desc
limit 5;
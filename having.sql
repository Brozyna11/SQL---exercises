-- HAVING clause sets the condition for a group rows created by the GROUP BY clause after the GROUP BY clause applies
-- WHERE clause sets the condition for individual rows before GROUP BY clause applies
select customer_id,SUM(amount)
from payment
group by customer_id
having sum(amount) > 200;

select store_id, count(customer_id)
from customer
group by store_id
having count(customer_id) > 300;

select rating, avg(rental_rate)
from film
where rating in ('R','G','PG')
group by rating
having avg(rental_rate) < 3;
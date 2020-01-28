SELECT sum(amount) as total, extract (day from payment_date) as day
FROM payment
GROUP by day
order by total desc
limit 5;

SELECT amount, extract (day from payment_date) as day,  extract (year from payment_date) as year
from payment;

select * from payment;
select * from customer;

select sum(amount), extract(month from payment_date) as month
from payment
group by month;




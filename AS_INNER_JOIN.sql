-- AS statement
select payment_id as my_payment_column
from payment;
-- you do not need to type for AS
select customer_id, sum(amount) total_spent
from payment
group by customer_id;
--- INNER JOIN EXAMPLE
SELECT A.primary_key,A.column_1,B.primary_key,B.column_2
from A
inner join B on B.primary_key = A.foreign_key
-- INNER JOIN - The INNER JOIN keyword selects records that have matching values in both tables.

select customer.customer_id, 
first_name, 
last_name,
email,
amount,
payment_date
from customer
inner join payment on payment.customer_id = customer.customer_id
where amount > 0 and customer.customer_id = 2
order by amount;

-- you can use only word JOIN instead if INNER JOIN



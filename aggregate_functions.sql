-- Aggregate functions take a lof of rows of data and aggregarte them to a single value
SELECT * FROM PAYMENT order by amount
LIMIT 5;

SELECT AVG(amount) FROM payment;
SELECT round(AVG(amount),5) FROM payment;
select min(amount) from payment;
select count(amount) from payment where amount=0.00;
select max(amount) from payment;
select avg(amount) from payment;
select sum(amount) from payment;
-- ASSIGNMENT 1
select count(amount) from payment where amount > 5;
-- ASSIGNMENT 2 - how many 
select count(first_name) from actor where first_name ilike 'P%';
-- ASSIGNMENT 3 - how many unique districts are our customers from
select * from address order by district;
select count(distinct(district))
from address;
--ASSIGNMENT 4 - retrieve list of unique districts
select distinct (district) from address;
-- AssIGNMENT 5 - how many films have a rating of R and a replacement cost between $ 5 and $ 15
select * from film;
-- by using COUNT you are cunting number of rows
select count(*) from film where  rating = 'R'and
replacement_cost between 5 and 15;
--ASSIGNMENT 6
select count(*) from film where title ilike '%truman%';
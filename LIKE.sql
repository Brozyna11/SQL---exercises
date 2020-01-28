-- find any values that starts with "J"
select first_name, last_name
from customer
where first_name like 'J'
-- find any values that end with "j"
select first_name, last_name
from customer
where first_name like '%j'
-- find any value that has 'jen' in the middle
select first_name, last_name
from customer
where first_name ilike '%jen%'
-- find any value that has 'j' in the second position
select first_name, last_name
from customer
where first_name ilike '_j'
-- find any value that starts with 'a' and end with 'o'
select first_name, last_name
from customer
where first_name ilike 'a%o'
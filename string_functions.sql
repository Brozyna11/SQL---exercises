select * from customer;

select first_name || ' ' || last_name from customer;

select first_name, char_length(first_name)
from customer;

select upper(first_name) from customer;
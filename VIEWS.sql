VIEWS - database object that is of a stored query
It is some kind of virtual Table

View does not store any particular data

select * from address
limit 1;

select * from customer
limit 1;

CREATE VIEW customer_info as 
select first_name,last_name,email,address,phone
from address
inner join customer
on address.address_id = customer.address_id;

select * from customer_info;

ALTER VIEW customer_info RENAME to customar_master_list;

DROP VIEW customar_master_list;
DROP VIEW IF EXISTS customar_master_list;
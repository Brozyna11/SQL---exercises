select a.first_name, a.last_name, b.first_name,b.last_name
from customer as a, customer as b
where a.first_name = b.last_name;

select a.first_name, a.last_name, b.first_name,b.last_name
from customer as a
join customer as b
on a.first_name = b.last_name;

select a.first_name, a.last_name, b.first_name,b.last_name
from customer as a
left join customer as b
on a.first_name = b.last_name;
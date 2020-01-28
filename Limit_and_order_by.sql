select * from customer order by first_name desc
limit 10;
-- ASC is a default
select * from customer order by first_name asc
limit 10;

select * from customer order by first_name desc;

select first_name,last_name from customer
order by first_name asc,
last_name desc;
-- PostgreSQL allows you to sort with a column which does not appear in final SELECT statement see example below
-- for example ORACLE does not allows this . It could happen also to some other database management systems
select first_name from customer
order by last_name;
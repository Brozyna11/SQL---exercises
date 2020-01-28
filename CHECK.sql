CHECK constraint

CREaTE TABLE NEW_USER (
id serial primary key,
first_name varchar(50),
birth_date DATE CHECK(birth_date > '1900-01-01'),
join_date DATE check(join_date > birth_date),
salary integer check(salary > 0));

select * from NEW_USER;

insert into NEW_USER(first_name,birth_date,join_date,salary)
values ('Joe', '1980-02-02', '1990-04-04', 10 )
-- you can name your constrain as per below
create table checktest(
sales integer constraint positive_sales check(sales >=0));

insert into checktest(sales)
values (-12);
NULL means that something is not known
It is different than 0 

CREATE TABLE learn_null (
first_name varchar (50),
sales integer not null);
-- the below wll give you an error as you did not specify value NULL in sales
insert into learn_null (first_name)
values ('john');
-- you can input 0 though
insert into learn_null (first_name,sales)
values ('john', 0);
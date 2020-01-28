-- select count (*)  functions returns single number of raws which are fulfilling conditions
select count (*) from customer where first_name ='Saskia';
select count(*) from payment;
-- you can combine this with distinct function
select count(distinct amount) from payment;
select * from payment;

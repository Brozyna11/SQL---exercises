select * from link;
-- it return row that has been deleted 
delete from link
where name ilike '%A%'
returning *;

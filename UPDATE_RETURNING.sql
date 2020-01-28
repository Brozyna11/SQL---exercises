-- use update to change value of the rows in the column 

UPDATE link 
set description = 'Empty Description';

select * from link;

UPDATE link 
set description = 'Name has "o" in the name'
where name iLIKE '%o%';

update link 
set description  =  name;

update link
set description = 'New Description'
where id = 1
returning id,url,name,description;
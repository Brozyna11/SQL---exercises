CREATE TABLE link(
ID serial PRIMARY KEY,
url varchar(255) not null,
name varchar(255) not null,
description varchar(255),
rel varchar(50)
);

select * from link;

INSERT INTO link(url,name)
values
('www.google.com','Google');

INSERT INTO link(url,name)
values
('www.yahoo.com','Yahoo');

INSERT INTO link(url,name)
values
('www.onet.pl','Onet'),
('www.amazon.com','Amazon'),
('www.twitter.com','Twitter');

CREATE TABLE link_copy (LIKE link);

select * from link_copy;

INSERT INTO link_copy 
SELECT *  
FROM link
WHERE name = 'Amazon';
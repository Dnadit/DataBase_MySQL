create table persons (
id int not null,
lastname varchar(255) not null,
firstname varchar(255),
age int,
primary key(id)
);
INSERT INTO persons VALUES (1, 'Hansen', 'Ola', 30);
INSERT INTO persons VALUES (2, 'Svendson', 'Tove', 23);
INSERT INTO persons VALUES (3, 'Pettersen', 'Kari', 20);

create table orders (
orderid int not null,
ordernumber int not null,
personid int,
primary key(orderid),
foreign key(personid) references persons(id)
);
INSERT INTO orders VALUES
(1, 77895, 3),
(2, 44678, 3),
(3, 22456, 2),
(4, 24562, 1);
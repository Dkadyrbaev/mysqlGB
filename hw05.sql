DROP DATABASE IF exists hw;
create database hw;
use hw;

drop table if exists `users`;
create table `users` (
	id SERIAL primary key,
	name VARCHAR(50),
	created_at VARCHAR(50),
	updated_at VARCHAR(50),
	bday_number date, -- для задания 4, если месяц рождения задавать числом
	bday_one_string VARCHAR(100) -- для задания 4, если дата рождения в формате дд месяц гггг одной строкой
);

insert into `users` (name, created_at, updated_at, bday_number, bday_one_string)
values
	('Ivan', now(), now(), '2000-05-09', '09 May 2000'),
	('Makar', now(), now(), '2001-08-01', '01 August 2001'),
	('John', now(), now(), '2002-01-01', '01 January 2002'),
	('Bill', now(), now(), '2003-02-01', '01 February 2003'),
	('Andy', now(), now(), '2004-05-08', '08 May 2004'),
	('Tom', now(), now(), '2005-08-02', '02 August 2005');


drop table if exists `storehouses_products`;
create table `storehouses_products`(
	id serial primary key,
	name varchar(50),
	value bigint not null
);

insert into `storehouses_products` (name, value)
values
	('item_1', 100),
	('item_2', 500),
	('item_3', 0),
	('item_4', 300),
	('item_5', 0),
	('item_7', 4500),
	('item_6', 5000),
	('item_0', 9000),
	('item_8', 50)
;

drop table if exists `catalogs`;
create table `catalogs`(
	id SERIAL primary key,
	name VARCHAR(50)
);

insert into `catalogs` (name)
values
	('a'),
	('b'),
	('c'),
	('d'),
	('x'),
	('w'),
	('e'),
	('r'),
	('p'),
	('f')
;
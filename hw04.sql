insert into users (`id`, `firstname`, `lastname`, `email`, `phone`)
values ('1', 'Dean', 'Satterfield', 'example01@mail.ru', '88001008100');

insert into users (`id`, `firstname`, `lastname`, `email`, `phone`)
values ('2', 'Dean', 'example01@mail.ru', 'Satterfield', '88001008101');

insert into users (`id`, `firstname`, `lastname`, `email`, `phone`)
values ('3', 'Dean', '88001008100', 'example02@mail.ru', 'Satterfield');

insert into users ()
values ('4', 'Dean', 'Satterfield', 'example03@mail.ru', '', '88001008102');

insert into users ()
values ();

insert into users values
('6', 'Reuben', 'Nienow', 'example04@mail.ru', null, 1000),
('7', 'Reuben', 'Nienow', 'example05@mail.ru', null, 1001),
('8', 'Reuben', 'Nienow', 'example06@mail.ru', null, 1010),
('9', 'Reuben', 'Nienow', 'example07@mail.ru', null, 1011)
;

insert into users
set
	firstname = 'Иван',
	lastname = 'Давыдов',
	email = 'example08@mail.ru',
	phone = '1100'
;

insert into `users`
	(`id`, `firstname`, `lastname`)
select
	`actor_id`, `first_name`, `last_name`
from sakila.actor
where actor_id = 100
;

insert into friend_requests (`initiator_user_id`, `target_user_id`, `status`)
values ('1', '2', 'requested');

insert into friend_requests (`initiator_user_id`, `target_user_id`, `status`)
values ('1', '9', 'requested');

insert into friend_requests (`initiator_user_id`, `target_user_id`, `status`)
values ('1', '4', 'requested');

insert into friend_requests (`initiator_user_id`, `target_user_id`, `status`)
values ('1', '6', 'requested');

update friend_requests 
set
	status = 'declined',
	updated_at = now()
where
	initiator_user_id = 1 and target_user_id = 4
;


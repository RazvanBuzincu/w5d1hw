insert into customer  (
	name,
	email,
	phone_number
) values (
	'Keanu Reaves',
	'johnwick@mydog.com',
	'773-221-Dogg'
	
);

select *
from customer;

insert into movie (
	movie_title,
	movie_genre,
	release_date
) values (
	'John Wick 4',
	'Action',
	'03/24/2023'
);

select *
from movie;

insert into ticket (
	seat_number,
	ticket_price,
	customer_id,
	movie_id
) values (
	'23',
	'19.99',
	1,
	1
)

select *
from ticket;

insert into concession (
	product_name,
	product_price,
	ticket_id
) values (
	'Popcorn',
	7,99,
	1
)

select *
from concession;


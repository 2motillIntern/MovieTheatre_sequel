INSERT INTO customers(
	customer_id, 
	first_name,
	last_name,
	e_mail,
	phone_num
)VALUES(
	1,
	'Joel',
	'Carter',
	'joel@codingtemple.com',
	'773-333-2567'
);

SELECT *
FROM customers;

-- Values for Inventory table
INSERT INTO inventory(
	amount,
	mov_time
	
)VALUES(
	600,
	'9:30PM'
);

SELECT*
FROM inventory

-- VALUES FOR CONCESSIONS
INSERT INTO concessions(
	snack_id,
	price,
	snack_name
)VALUES(
	203992,
	18.70,
	'Sour Patch Kids'
);

SELECT*
FROM concessions

-- Insert statement for movie data
INSERT INTO movies(
	movie_id,
	title,
	duration,
	genre,
	studio 
)VALUES(
	1292038,
	'The Green Mile',
	'2 hr. 30 min.',
	'Drama',
	'Paramount'
);

SELECT *
FROM movies

-- Values for Tix
INSERT INTO tickets(
	ticket_id,
	tic_date,
	seat_num,
	movie_id,
	total_amount
)VALUES(
	10182833,
	'10/21/2020',
	12,
	1292038,
	600
);

SELECT *
FROM tickets;

-- Values for wallet
INSERT INTO wallet(
	wallet_id,
	customer_id,
	ticket_id,
	snack_id
)VALUES(
	1098876,
	1,
	10182833,
	203992
);
SELECT *
FROM wallet;
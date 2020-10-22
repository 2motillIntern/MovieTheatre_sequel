--First off Create a Table
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	e_mail VARCHAR(100),
	phone_num VARCHAR(15)
);

--Inventory Table
CREATE TABLE inventory(
	amount SERIAL PRIMARY KEY,
	mov_time VARCHAR(150)
);

-- Concessions Table
CREATE TABLE concessions(
	snack_id SERIAL PRIMARY KEY,
	price INTEGER,
	snack_name VARCHAR(100)
);

-- Movie Table
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	duration VARCHAR(100),
	genre VARCHAR(100),
	studio VARCHAR(100)
);

--Tickets Table
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	tic_date DATE DEFAULT CURRENT_DATE,
	seat_num VARCHAR(2),
	movie_id VARCHAR(100),
	total_amount INTEGER,
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
	FOREIGN KEY (total_amount) REFERENCES inventory(amount)
);

--Make sure Wallet table is beneath others so f(x) can run smoothly, if it runs
CREATE TABLE wallet(
	wallet_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	ticket_id INTEGER,
	snack_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
	FOREIGN KEY (ticket_id) REFERENCES tickets (ticket_id),
	FOREIGN KEY (snack_id) REFERENCES concessions(snack_id)
);
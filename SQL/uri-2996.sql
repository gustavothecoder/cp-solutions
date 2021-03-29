-- URI-2996: https://www.urionlinejudge.com.br/judge/en/problems/view/2996

CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	type CHAR,
	address VARCHAR(50)
);

CREATE TABLE packages(
	id_package SERIAL PRIMARY KEY,
	id_user_sender INT REFERENCES users(id),
	id_user_receiver INT REFERENCES users(id),
	color VARCHAR(50),
	year INTEGER
);

INSERT INTO users(name, address)
VALUES ('Edgar Codd', 'England'),
	   ('Peter Chen', 'Taiwan'),
	   ('Jim Gray', 'United States'),
	   ('Elizabeth O''Neil','United States');
	   
INSERT INTO packages(id_user_sender, id_user_receiver, color, year)
VALUES (1, 2, 'blue', 2015),
	   (1, 3, 'blue', 2019),
	   (2, 4, 'red', 2019),
	   (2, 1, 'green', 2018),
	   (3, 4, 'red', 2015),
	   (4, 3, 'blue', 2019);

SELECT year, sender, receiver
FROM (
	SELECT id_package, year, users.name sender FROM packages
	JOIN users ON users.id = id_user_sender
	WHERE (color = 'blue' OR year = 2015) AND address != 'Taiwan'
) sent_blue_packages JOIN (
	SELECT id_package, users.name receiver FROM packages
	JOIN users ON users.id = id_user_receiver
	WHERE (color = 'blue' OR year = 2015) AND address != 'Taiwan'
) received_blue_packages
ON sent_blue_packages.id_package = received_blue_packages.id_package
ORDER BY year DESC, sender DESC;

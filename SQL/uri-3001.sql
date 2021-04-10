-- URI 3001: https://www.urionlinejudge.com.br/judge/en/problems/view/3001

CREATE TABLE products(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	type CHAR,
	price NUMERIC DEFAULT
);

INSERT INTO products(name, type, price)
VALUES ('Monitor', 'B', 0),
       ('Headset', 'A', 0),
	   ('PC Case ', 'A',0),
	   ('Computer Desk', 'C', 0),
	   ('Gaming Chair', 'C', 0),
	   ('Mouse', 'A', 0);
	   
SELECT 
	name,
	CASE type
		WHEN 'A' THEN 20.0
		WHEN 'B' THEN 70.0
		ELSE 530.5
	END price
FROM products
ORDER BY type, id DESC;

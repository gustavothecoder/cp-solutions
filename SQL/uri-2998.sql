-- URI-2998: https://www.urionlinejudge.com.br/judge/en/problems/view/2998

CREATE TABLE clients (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    investment NUMERIC
);

CREATE TABLE operations (
    id INTEGER PRIMARY KEY,
    client_id INTEGER REFERENCES clients(id),
    month INTEGER,
    profit NUMERIC
);

INSERT INTO clients (id, name, investment) 
values	(1, 'Daniel', 500 ),
		(2, 'Oliveira', 2000),
		(3, 'Lucas', 1000);

INSERT INTO operations (id, client_id, month, profit) 
values ( 1,    1,  1,  230 ),
       ( 2,    2,  1,  1000),
	   ( 3,    2,  2,  1000),
	   ( 4,    3,  1,  100 ),
	   ( 5,    3,  2,  300 ),
	   ( 6,    3,  3,  900 ),
	   ( 7,    3,  4,  400 );

SELECT 
	name, 
	investment, 
	MIN(month) month_of_payback, 
	MIN(profit_sum) - investment return 
FROM clients
JOIN (
	SElECT 
		client_id, 
		month, 
		SUM(profit) 
			OVER (
				PARTITION BY client_id 
				ORDER BY client_id, month
			) AS profit_sum 
	FROM clients
	JOIN operations ON operations.client_id = clients.id
) genereted_money ON genereted_money.client_id = clients.id
WHERE profit_sum >= investment
GROUP BY name, investment;